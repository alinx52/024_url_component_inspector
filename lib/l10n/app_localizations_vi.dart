// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình kiểm tra thành phần URL';

  @override
  String get appDescription =>
      'Kiểm tra các thành phần URL và tham số truy vấn theo đúng thứ tự ngay trên thiết bị này. Địa chỉ không bao giờ được mở hoặc gửi đi.';

  @override
  String get languageMenuTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Chất liệu';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm mại';

  @override
  String get urlInputLabel => 'URL cần kiểm tra';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Kiểm tra URL';

  @override
  String get clearUrl => 'Xóa URL';

  @override
  String get inspectionResult => 'Kết quả kiểm tra';

  @override
  String get scheme => 'Lược đồ';

  @override
  String get host => 'Máy chủ';

  @override
  String get port => 'Cổng';

  @override
  String get path => 'Đường dẫn';

  @override
  String get fragment => 'Phân đoạn';

  @override
  String get defaultValue => 'Mặc định';

  @override
  String get noneValue => 'Không có';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Tham số truy vấn: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Đã giải mã: $name = $value';
  }

  @override
  String get errorEmpty => 'Nhập URL cần kiểm tra';

  @override
  String get errorAbsolute => 'Nhập URL tuyệt đối hợp lệ có lược đồ và máy chủ';

  @override
  String get errorScheme => 'Chỉ hỗ trợ URL HTTP và HTTPS';

  @override
  String get errorTooLong => 'URL quá dài';

  @override
  String get errorEncoding =>
      'URL chứa mã hóa phần trăm sai hoặc UTF-8 không hợp lệ';
}
