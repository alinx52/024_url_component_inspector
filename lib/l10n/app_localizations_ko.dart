// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'URL Component Inspector';

  @override
  String get appDescription =>
      'Split a manually entered web URL into readable components and query parameters entirely offline.';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageKorean => '한국어';

  @override
  String get privacyPolicy => '개인정보처리방침';
}
