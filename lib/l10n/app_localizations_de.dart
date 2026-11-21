// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'URL-Komponentenprüfer';

  @override
  String get appDescription =>
      'Prüft URL-Komponenten und geordnete Abfrageparameter ausschließlich auf diesem Gerät. Die Adresse wird weder geöffnet noch gesendet.';

  @override
  String get languageMenuTooltip => 'Sprache auswählen';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get appearanceTooltip => 'Darstellung auswählen';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Flach';

  @override
  String get appearanceSoft => 'Weich';

  @override
  String get urlInputLabel => 'Zu prüfende URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'URL prüfen';

  @override
  String get clearUrl => 'URL löschen';

  @override
  String get inspectionResult => 'Prüfergebnis';

  @override
  String get scheme => 'Schema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Port';

  @override
  String get path => 'Pfad';

  @override
  String get fragment => 'Fragment';

  @override
  String get defaultValue => 'Standard';

  @override
  String get noneValue => 'Keine';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Abfrageparameter: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Dekodiert: $name = $value';
  }

  @override
  String get errorEmpty => 'Gib eine zu prüfende URL ein';

  @override
  String get errorAbsolute =>
      'Gib eine gültige absolute URL mit Schema und Host ein';

  @override
  String get errorScheme => 'Nur HTTP- und HTTPS-URLs werden unterstützt';

  @override
  String get errorTooLong => 'Die URL ist zu lang';

  @override
  String get errorEncoding =>
      'Die URL enthält eine fehlerhafte Prozentkodierung oder ungültiges UTF-8';
}
