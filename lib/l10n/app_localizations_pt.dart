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

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Inspetor de Componentes de URL';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Analisa e decodifica URLs web complexas em seus componentes estruturados (esquema, host, porta, caminho, parâmetros, fragmento) offline.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Cole ou digite uma URL (HTTP ou HTTPS). O aplicativo analisa e decodifica todos os segmentos em tempo real.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Exibe esquema, host, porta, caminho, fragmento e uma lista de chaves e valores decodificados dos parâmetros de consulta.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Entrada: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nHost: example.com, Porta: 8080, Caminho: /search\nConsulta: q = \"flutter dev\", lang = \"ko\"\nFragmento: top.';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Analisador sintático de URL. Não abre links, não testa a segurança do site nem verifica certificados SSL.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as URLs são inspecionadas localmente sem chamadas de rede ou navegação. Um banner do AdMob é exibido abaixo.';
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

  @override
  String get helpTooltip => 'Ajuda e guia';

  @override
  String get helpTitle => 'Guia do Inspetor de Componentes de URL';

  @override
  String get helpProblemSolvedTitle => 'Problema resolvido';

  @override
  String get helpProblemSolvedContent =>
      'Analisa e decodifica URLs web complexas em seus componentes estruturados (esquema, host, porta, caminho, parâmetros, fragmento) offline.';

  @override
  String get helpHowToUseTitle => 'Como usar';

  @override
  String get helpHowToUseContent =>
      'Cole ou digite uma URL (HTTP ou HTTPS). O aplicativo analisa e decodifica todos os segmentos em tempo real.';

  @override
  String get helpReadingResultsTitle => 'Leitura dos resultados';

  @override
  String get helpReadingResultsContent =>
      'Exibe esquema, host, porta, caminho, fragmento e uma lista de chaves e valores decodificados dos parâmetros de consulta.';

  @override
  String get helpExampleTitle => 'Exemplo';

  @override
  String get helpExampleContent =>
      'Entrada: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nHost: example.com, Porta: 8080, Caminho: /search\nConsulta: q = \"flutter dev\", lang = \"ko\"\nFragmento: top.';

  @override
  String get helpLimitsTitle => 'Validação e limites';

  @override
  String get helpLimitsContent =>
      'Analisador sintático de URL. Não abre links, não testa a segurança do site nem verifica certificados SSL.';

  @override
  String get helpDataAndPrivacyTitle => 'Dados locais e anúncios';

  @override
  String get helpDataAndPrivacyContent =>
      'Todas as URLs são inspecionadas localmente sem chamadas de rede ou navegação. Um banner do AdMob é exibido abaixo.';
}
