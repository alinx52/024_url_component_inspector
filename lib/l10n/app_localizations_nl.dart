// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'URL-onderdeleninspecteur';

  @override
  String get appDescription =>
      'Inspecteer URL-onderdelen en geordende queryparameters alleen op dit apparaat. Het adres wordt nooit geopend of verzonden.';

  @override
  String get languageMenuTooltip => 'Taal kiezen';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get appearanceTooltip => 'Weergave kiezen';

  @override
  String get appearanceMaterial => 'Materiaal';

  @override
  String get appearanceFlat => 'Vlak';

  @override
  String get appearanceSoft => 'Zacht';

  @override
  String get urlInputLabel => 'Te inspecteren URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'URL inspecteren';

  @override
  String get clearUrl => 'URL wissen';

  @override
  String get inspectionResult => 'Inspectieresultaat';

  @override
  String get scheme => 'Schema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Poort';

  @override
  String get path => 'Pad';

  @override
  String get fragment => 'Fragment';

  @override
  String get defaultValue => 'Standaard';

  @override
  String get noneValue => 'Geen';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Queryparameters: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Gedecodeerd: $name = $value';
  }

  @override
  String get errorEmpty => 'Voer een URL in om te inspecteren';

  @override
  String get errorAbsolute =>
      'Voer een geldige absolute URL met schema en host in';

  @override
  String get errorScheme => 'Alleen HTTP- en HTTPS-URL’s worden ondersteund';

  @override
  String get errorTooLong => 'De URL is te lang';

  @override
  String get errorEncoding =>
      'De URL bevat onjuiste procentcodering of ongeldige UTF-8';
}
