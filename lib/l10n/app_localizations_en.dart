// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'URL Component Inspector';

  @override
  String get appDescription =>
      'Inspect URL components and ordered query parameters entirely on this device. The address is never opened or sent.';

  @override
  String get languageMenuTooltip => 'Choose language';

  @override
  String get privacyPolicy => 'Privacy policy';

  @override
  String get appearanceTooltip => 'Choose appearance';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flat';

  @override
  String get appearanceSoft => 'Soft';

  @override
  String get urlInputLabel => 'URL to inspect';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Inspect URL';

  @override
  String get clearUrl => 'Clear URL';

  @override
  String get inspectionResult => 'Inspection result';

  @override
  String get scheme => 'Scheme';

  @override
  String get host => 'Host';

  @override
  String get port => 'Port';

  @override
  String get path => 'Path';

  @override
  String get fragment => 'Fragment';

  @override
  String get defaultValue => 'Default';

  @override
  String get noneValue => 'None';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Query parameters: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Decoded: $name = $value';
  }

  @override
  String get errorEmpty => 'Enter a URL to inspect';

  @override
  String get errorAbsolute =>
      'Enter a valid absolute URL with a scheme and host';

  @override
  String get errorScheme => 'Only HTTP and HTTPS URLs are supported';

  @override
  String get errorTooLong => 'URL is too long';

  @override
  String get errorEncoding =>
      'URL contains malformed percent encoding or invalid UTF-8';

  @override
  String get helpTooltip => 'Help & Guide';

  @override
  String get helpTitle => 'URL Component Inspector Guide';

  @override
  String get helpProblemSolvedTitle => 'Problem Solved';

  @override
  String get helpProblemSolvedContent =>
      'Parses and decodes complex web URLs into structured components (scheme, host, port, path, ordered query parameters, fragment) offline without network requests.';

  @override
  String get helpHowToUseTitle => 'How to Use';

  @override
  String get helpHowToUseContent =>
      'Paste or type a web URL (HTTP or HTTPS) into the input box. The app dissects and decodes all URL segments in real time.';

  @override
  String get helpReadingResultsTitle => 'Reading Results';

  @override
  String get helpReadingResultsContent =>
      'Displays Scheme, Hostname, Port, Path, Fragment, and an interactive list of Query Keys & Values (with decoded percent-encoding).';

  @override
  String get helpExampleTitle => 'Example';

  @override
  String get helpExampleContent =>
      'Input: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nHost: example.com, Port: 8080, Path: /search\nQuery: q = \"flutter dev\", lang = \"ko\"\nFragment: top.';

  @override
  String get helpLimitsTitle => 'Validation & Limitations';

  @override
  String get helpLimitsContent =>
      'Syntactic URL parser only. Does not open links, fetch remote headers, check web safety, or verify domain certificate authenticity.';

  @override
  String get helpDataAndPrivacyTitle => 'Local Data & Ads';

  @override
  String get helpDataAndPrivacyContent =>
      'All URLs are inspected on-device without internet requests, browser navigation, or server logging. An AdMob banner is displayed below.';
}
