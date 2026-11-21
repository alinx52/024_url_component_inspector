import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:url_component_inspector/app.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  Future<void> submit(WidgetTester tester, String value) async {
    await tester.enterText(find.byKey(const ValueKey('url-input')), value);
    await tester.tap(find.byKey(const ValueKey('inspect-url')));
    await tester.pump();
  }

  testWidgets('English first run inspects every requested URL component', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    expect(find.text('URL Component Inspector'), findsOneWidget);
    expect(find.text('URL to inspect'), findsOneWidget);
    await submit(
      tester,
      'https://example.com:8443/docs/item?id=42&mode=full#details',
    );

    expect(find.text('Inspection result'), findsOneWidget);
    expect(find.text('Scheme: https'), findsOneWidget);
    expect(find.text('Host: example.com'), findsOneWidget);
    expect(find.text('Port: 8443'), findsOneWidget);
    expect(find.text('Path: /docs/item'), findsOneWidget);
    expect(find.text('Query parameters: 2'), findsOneWidget);
    expect(find.text('id = 42'), findsOneWidget);
    expect(find.text('mode = full'), findsOneWidget);
    expect(find.text('Fragment: details'), findsOneWidget);
  });

  testWidgets(
    'fallbacks, repeated values, blanks, decoding, and plus are exact',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pump();

      await submit(tester, 'https://EXAMPLE.COM');
      expect(find.text('Host: example.com'), findsOneWidget);
      expect(find.text('Port: Default'), findsOneWidget);
      expect(find.text('Path: /'), findsOneWidget);
      expect(find.text('Query parameters: 0'), findsOneWidget);
      expect(find.text('Fragment: None'), findsOneWidget);

      await submit(
        tester,
        'https://example.com/?tag=one&tag=&q=a+b&city=S%C3%A3o%20Paulo',
      );
      expect(find.text('tag = one'), findsOneWidget);
      expect(find.text('tag = '), findsOneWidget);
      expect(find.text('q = a+b'), findsOneWidget);
      expect(find.text('city = S%C3%A3o%20Paulo'), findsOneWidget);
      expect(find.text('Decoded: city = São Paulo'), findsOneWidget);
      expect(find.text('Decoded: q = a b'), findsNothing);
    },
  );

  testWidgets(
    'all invalid inputs are localized and retain the last valid result',
    (tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pump();
      await submit(tester, 'https://example.com/kept');
      expect(find.text('Path: /kept'), findsOneWidget);

      final invalid = <String, String>{
        '': 'Enter a URL to inspect',
        '/relative': 'Enter a valid absolute URL with a scheme and host',
        'ftp://example.com': 'Only HTTP and HTTPS URLs are supported',
        'https://example.com/?bad=%ZZ':
            'URL contains malformed percent encoding or invalid UTF-8',
        'https://example.com/?bad=%FF':
            'URL contains malformed percent encoding or invalid UTF-8',
        'https://example.com/${'a' * 4090}': 'URL is too long',
      };
      for (final entry in invalid.entries) {
        await submit(tester, entry.key);
        expect(find.text(entry.value), findsOneWidget);
        expect(find.text('Path: /kept'), findsOneWidget);
      }
    },
  );

  testWidgets('Korean and Arabic switch immediately while preserving state', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();
    await submit(tester, 'https://example.com/path?id=42');

    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    final optionKo = find.byKey(const ValueKey('locale-ko'));
    await tester.ensureVisible(optionKo);
    await tester.tap(optionKo);
    await tester.pumpAndSettle();
    expect(find.text('URL 구성 요소 검사기'), findsOneWidget);
    expect(find.text('검사 결과'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('language')));
    await tester.pumpAndSettle();
    final optionAr = find.byKey(const ValueKey('locale-ar'));
    await tester.ensureVisible(optionAr);
    await tester.tap(optionAr);
    await tester.pumpAndSettle();

    expect(find.text('فاحص مكوّنات عنوان URL'), findsOneWidget);
    expect(find.text('نتيجة الفحص'), findsOneWidget);
    expect(find.text('id = 42'), findsOneWidget);
    expect(
      tester
          .widget<TextField>(find.byKey(const ValueKey('url-input')))
          .controller!
          .text,
      'https://example.com/path?id=42',
    );
    expect(
      tester
          .widget<Directionality>(
            find
                .ancestor(
                  of: find.byType(Scaffold),
                  matching: find.byType(Directionality),
                )
                .first,
          )
          .textDirection,
      TextDirection.rtl,
    );
    expect(tester.takeException(), isNull);
  });
}
