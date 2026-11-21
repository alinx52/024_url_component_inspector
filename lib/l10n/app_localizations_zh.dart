// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'URL 组件检查器';

  @override
  String get appDescription => '完全在本设备上检查 URL 组件和保持顺序的查询参数。地址不会被打开或发送。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get urlInputLabel => '要检查的 URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => '检查 URL';

  @override
  String get clearUrl => '清除 URL';

  @override
  String get inspectionResult => '检查结果';

  @override
  String get scheme => '协议';

  @override
  String get host => '主机';

  @override
  String get port => '端口';

  @override
  String get path => '路径';

  @override
  String get fragment => '片段';

  @override
  String get defaultValue => '默认';

  @override
  String get noneValue => '无';

  @override
  String componentValue(String label, String value) {
    return '$label：$value';
  }

  @override
  String queryCount(int count) {
    return '查询参数：$count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return '解码后：$name = $value';
  }

  @override
  String get errorEmpty => '请输入要检查的 URL';

  @override
  String get errorAbsolute => '请输入包含协议和主机的有效绝对 URL';

  @override
  String get errorScheme => '仅支持 HTTP 和 HTTPS URL';

  @override
  String get errorTooLong => 'URL 过长';

  @override
  String get errorEncoding => 'URL 含有格式错误的百分号编码或无效的 UTF-8';
}

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => 'URL 组件检查器';

  @override
  String get appDescription => '完全在本设备上检查 URL 组件和保持顺序的查询参数。地址不会被打开或发送。';

  @override
  String get languageMenuTooltip => '选择语言';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get appearanceTooltip => '选择外观';

  @override
  String get appearanceMaterial => '质感';

  @override
  String get appearanceFlat => '扁平';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get urlInputLabel => '要检查的 URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => '检查 URL';

  @override
  String get clearUrl => '清除 URL';

  @override
  String get inspectionResult => '检查结果';

  @override
  String get scheme => '协议';

  @override
  String get host => '主机';

  @override
  String get port => '端口';

  @override
  String get path => '路径';

  @override
  String get fragment => '片段';

  @override
  String get defaultValue => '默认';

  @override
  String get noneValue => '无';

  @override
  String componentValue(String label, String value) {
    return '$label：$value';
  }

  @override
  String queryCount(int count) {
    return '查询参数：$count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return '解码后：$name = $value';
  }

  @override
  String get errorEmpty => '请输入要检查的 URL';

  @override
  String get errorAbsolute => '请输入包含协议和主机的有效绝对 URL';

  @override
  String get errorScheme => '仅支持 HTTP 和 HTTPS URL';

  @override
  String get errorTooLong => 'URL 过长';

  @override
  String get errorEncoding => 'URL 含有格式错误的百分号编码或无效的 UTF-8';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => 'URL 元件檢查器';

  @override
  String get appDescription => '完全在此裝置上檢查 URL 元件及保持順序的查詢參數。不會開啟或傳送網址。';

  @override
  String get languageMenuTooltip => '選擇語言';

  @override
  String get privacyPolicy => '隱私權政策';

  @override
  String get appearanceTooltip => '選擇外觀';

  @override
  String get appearanceMaterial => '質感';

  @override
  String get appearanceFlat => '平面';

  @override
  String get appearanceSoft => '柔和';

  @override
  String get urlInputLabel => '要檢查的 URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => '檢查 URL';

  @override
  String get clearUrl => '清除 URL';

  @override
  String get inspectionResult => '檢查結果';

  @override
  String get scheme => '通訊協定';

  @override
  String get host => '主機';

  @override
  String get port => '連接埠';

  @override
  String get path => '路徑';

  @override
  String get fragment => '片段';

  @override
  String get defaultValue => '預設';

  @override
  String get noneValue => '無';

  @override
  String componentValue(String label, String value) {
    return '$label：$value';
  }

  @override
  String queryCount(int count) {
    return '查詢參數：$count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return '解碼後：$name = $value';
  }

  @override
  String get errorEmpty => '請輸入要檢查的 URL';

  @override
  String get errorAbsolute => '請輸入含通訊協定及主機的有效絕對 URL';

  @override
  String get errorScheme => '僅支援 HTTP 與 HTTPS URL';

  @override
  String get errorTooLong => 'URL 太長';

  @override
  String get errorEncoding => 'URL 含有格式錯誤的百分比編碼或無效的 UTF-8';
}
