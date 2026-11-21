// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Pemeriksa Komponen URL';

  @override
  String get appDescription =>
      'Periksa komponen URL dan parameter kueri berurutan hanya di perangkat ini. Alamat tidak pernah dibuka atau dikirim.';

  @override
  String get languageMenuTooltip => 'Pilih bahasa';

  @override
  String get privacyPolicy => 'Kebijakan privasi';

  @override
  String get appearanceTooltip => 'Pilih tampilan';

  @override
  String get appearanceMaterial => 'Material';

  @override
  String get appearanceFlat => 'Datar';

  @override
  String get appearanceSoft => 'Lembut';

  @override
  String get urlInputLabel => 'URL yang akan diperiksa';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Periksa URL';

  @override
  String get clearUrl => 'Hapus URL';

  @override
  String get inspectionResult => 'Hasil pemeriksaan';

  @override
  String get scheme => 'Skema';

  @override
  String get host => 'Host';

  @override
  String get port => 'Port';

  @override
  String get path => 'Jalur';

  @override
  String get fragment => 'Fragmen';

  @override
  String get defaultValue => 'Bawaan';

  @override
  String get noneValue => 'Tidak ada';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Parameter kueri: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Hasil dekode: $name = $value';
  }

  @override
  String get errorEmpty => 'Masukkan URL yang akan diperiksa';

  @override
  String get errorAbsolute =>
      'Masukkan URL absolut yang valid dengan skema dan host';

  @override
  String get errorScheme => 'Hanya URL HTTP dan HTTPS yang didukung';

  @override
  String get errorTooLong => 'URL terlalu panjang';

  @override
  String get errorEncoding =>
      'URL berisi pengodean persen yang salah atau UTF-8 yang tidak valid';
}
