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

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn kiểm tra thành phần URL';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Phân tích và giải mã các URL web phức tạp thành các thành phần có cấu trúc (giao thức, máy chủ, cổng, đường dẫn, tham số, phân đoạn) ngoại tuyến.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Dán hoặc nhập URL web (HTTP hoặc HTTPS) vào ô nhập. Ứng dụng sẽ phân tích và giải mã tất cả các phần URL theo thời gian thực.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị Giao thức, Tên máy chủ, Cổng, Đường dẫn, Phân đoạn và danh sách Khóa & Giá trị truy vấn được giải mã.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Đầu vào: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nMáy chủ: example.com, Cổng: 8080, Đường dẫn: /search\nTruy vấn: q = \"flutter dev\", lang = \"ko\"\nPhân đoạn: top.';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Chỉ là công cụ phân tích cú pháp URL. Không mở liên kết, không kiểm tra an toàn web hoặc tính xác thực của chứng chỉ.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tất cả các URL được kiểm tra trên thiết bị mà không cần internet hay trình duyệt. Biểu ngữ AdMob hiển thị ở dưới cùng.';
}
