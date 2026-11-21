// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Ispettore componenti URL';

  @override
  String get appDescription =>
      'Ispeziona i componenti dell’URL e i parametri ordinati solo su questo dispositivo. L’indirizzo non viene aperto né inviato.';

  @override
  String get languageMenuTooltip => 'Scegli lingua';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get appearanceTooltip => 'Scegli aspetto';

  @override
  String get appearanceMaterial => 'Materiale';

  @override
  String get appearanceFlat => 'Piatto';

  @override
  String get appearanceSoft => 'Morbido';

  @override
  String get urlInputLabel => 'URL da ispezionare';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Ispeziona URL';

  @override
  String get clearUrl => 'Cancella URL';

  @override
  String get inspectionResult => 'Risultato dell’ispezione';

  @override
  String get scheme => 'Schema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Porta';

  @override
  String get path => 'Percorso';

  @override
  String get fragment => 'Frammento';

  @override
  String get defaultValue => 'Predefinita';

  @override
  String get noneValue => 'Nessuno';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Parametri di query: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Decodificato: $name = $value';
  }

  @override
  String get errorEmpty => 'Inserisci un URL da ispezionare';

  @override
  String get errorAbsolute =>
      'Inserisci un URL assoluto valido con schema e host';

  @override
  String get errorScheme => 'Sono supportati solo URL HTTP e HTTPS';

  @override
  String get errorTooLong => 'L’URL è troppo lungo';

  @override
  String get errorEncoding =>
      'L’URL contiene una codifica percentuale errata o UTF-8 non valido';
}
