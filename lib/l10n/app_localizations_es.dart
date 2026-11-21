// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Inspector de componentes URL';

  @override
  String get appDescription =>
      'Inspecciona los componentes de una URL y sus parámetros ordenados solo en este dispositivo. La dirección no se abre ni se envía.';

  @override
  String get languageMenuTooltip => 'Elegir idioma';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get appearanceTooltip => 'Elegir apariencia';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Plano';

  @override
  String get appearanceSoft => 'Suave';

  @override
  String get urlInputLabel => 'URL para inspeccionar';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Inspeccionar URL';

  @override
  String get clearUrl => 'Borrar URL';

  @override
  String get inspectionResult => 'Resultado de la inspección';

  @override
  String get scheme => 'Esquema';

  @override
  String get host => 'Servidor';

  @override
  String get port => 'Puerto';

  @override
  String get path => 'Ruta';

  @override
  String get fragment => 'Fragmento';

  @override
  String get defaultValue => 'Predeterminado';

  @override
  String get noneValue => 'Ninguno';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Parámetros de consulta: $count';
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
  String get errorEmpty => 'Introduce una URL para inspeccionar';

  @override
  String get errorAbsolute =>
      'Introduce una URL absoluta válida con esquema y servidor';

  @override
  String get errorScheme => 'Solo se admiten URL HTTP y HTTPS';

  @override
  String get errorTooLong => 'La URL es demasiado larga';

  @override
  String get errorEncoding =>
      'La URL contiene codificación porcentual incorrecta o UTF-8 no válido';
}
