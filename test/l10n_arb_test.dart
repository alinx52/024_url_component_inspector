import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every required ARB has the complete English message key set', () {
    const locales = [
      'en',
      'ko',
      'ja',
      'zh_Hans',
      'zh_Hant',
      'es',
      'fr',
      'de',
      'pt_BR',
      'it',
      'nl',
      'ru',
      'ar',
      'hi',
      'id',
      'vi',
    ];
    Map<String, dynamic> read(String locale) =>
        jsonDecode(File('lib/l10n/app_$locale.arb').readAsStringSync())
            as Map<String, dynamic>;
    final english = read('en');
    final expected = english.keys.where((key) => !key.startsWith('@')).toSet();

    for (final locale in locales) {
      final arb = read(locale);
      final actual = arb.keys.where((key) => !key.startsWith('@')).toSet();
      expect(actual, expected, reason: 'Incomplete messages for $locale');
      if (locale != 'en') {
        expect(arb['appTitle'], isNot(english['appTitle']));
        expect(arb['appDescription'], isNot(english['appDescription']));
        expect(arb['errorEmpty'], isNot(english['errorEmpty']));
      }
    }
  });
}
