// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Inspetor de componentes de URL';

  @override
  String get appDescription =>
      'Inspecione componentes da URL e parâmetros ordenados somente neste dispositivo. O endereço nunca é aberto nem enviado.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get urlInputLabel => 'URL para inspecionar';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Inspecionar URL';

  @override
  String get clearUrl => 'Limpar URL';

  @override
  String get inspectionResult => 'Resultado da inspeção';

  @override
  String get scheme => 'Esquema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Porta';

  @override
  String get path => 'Caminho';

  @override
  String get fragment => 'Fragmento';

  @override
  String get defaultValue => 'Padrão';

  @override
  String get noneValue => 'Nenhum';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Parâmetros de consulta: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Decodificado: $name = $value';
  }

  @override
  String get errorEmpty => 'Digite uma URL para inspecionar';

  @override
  String get errorAbsolute =>
      'Digite uma URL absoluta válida com esquema e host';

  @override
  String get errorScheme => 'Somente URLs HTTP e HTTPS são compatíveis';

  @override
  String get errorTooLong => 'A URL é longa demais';

  @override
  String get errorEncoding =>
      'A URL contém codificação percentual incorreta ou UTF-8 inválido';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Inspetor de componentes de URL';

  @override
  String get appDescription =>
      'Inspecione componentes da URL e parâmetros ordenados somente neste dispositivo. O endereço nunca é aberto nem enviado.';

  @override
  String get languageMenuTooltip => 'Escolher idioma';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get appearanceTooltip => 'Escolher aparência';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get urlInputLabel => 'URL para inspecionar';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Inspecionar URL';

  @override
  String get clearUrl => 'Limpar URL';

  @override
  String get inspectionResult => 'Resultado da inspeção';

  @override
  String get scheme => 'Esquema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Porta';

  @override
  String get path => 'Caminho';

  @override
  String get fragment => 'Fragmento';

  @override
  String get defaultValue => 'Padrão';

  @override
  String get noneValue => 'Nenhum';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Parâmetros de consulta: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Decodificado: $name = $value';
  }

  @override
  String get errorEmpty => 'Digite uma URL para inspecionar';

  @override
  String get errorAbsolute =>
      'Digite uma URL absoluta válida com esquema e host';

  @override
  String get errorScheme => 'Somente URLs HTTP e HTTPS são compatíveis';

  @override
  String get errorTooLong => 'A URL é longa demais';

  @override
  String get errorEncoding =>
      'A URL contém codificação percentual incorreta ou UTF-8 inválido';
}
