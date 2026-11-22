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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => 'URL组件检查器指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '在不发起任何网络请求的情况下，离线解析并解码复杂的Web网址，拆解为协议、主机、端口、路径、按序排布的查询参数及锚点。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '将HTTP或HTTPS网址粘贴或输入到输入框中。应用会即时解析并解码所有网址组成段落与查询参数。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '清晰列出协议方案（Scheme）、主机名、端口、路径、锚点片段，以及已解码百分号编码的键值对查询参数列表。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '输入: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\n主机: example.com，端口: 8080，路径: /search\n查询: q = \"flutter dev\"，lang = \"ko\"\n锚点: top。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为语法URL解析工具。绝不访问远程链接，不检测网页安全性、钓鱼风险或SSL证书有效性。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有网址解析均在本地完成，无网络请求、无浏览器跳转与服务器记录。屏幕底部展示标准AdMob横幅广告。';
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

  @override
  String get helpTooltip => '帮助与指南';

  @override
  String get helpTitle => 'URL组件检查器指南';

  @override
  String get helpProblemSolvedTitle => '解决的问题';

  @override
  String get helpProblemSolvedContent =>
      '在不发起任何网络请求的情况下，离线解析并解码复杂的Web网址，拆解为协议、主机、端口、路径、按序排布的查询参数及锚点。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '将HTTP或HTTPS网址粘贴或输入到输入框中。应用会即时解析并解码所有网址组成段落与查询参数。';

  @override
  String get helpReadingResultsTitle => '查看结果';

  @override
  String get helpReadingResultsContent =>
      '清晰列出协议方案（Scheme）、主机名、端口、路径、锚点片段，以及已解码百分号编码的键值对查询参数列表。';

  @override
  String get helpExampleTitle => '示例';

  @override
  String get helpExampleContent =>
      '输入: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\n主机: example.com，端口: 8080，路径: /search\n查询: q = \"flutter dev\"，lang = \"ko\"\n锚点: top。';

  @override
  String get helpLimitsTitle => '验证与限制';

  @override
  String get helpLimitsContent =>
      '仅为语法URL解析工具。绝不访问远程链接，不检测网页安全性、钓鱼风险或SSL证书有效性。';

  @override
  String get helpDataAndPrivacyTitle => '本地数据与广告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有网址解析均在本地完成，无网络请求、无浏览器跳转与服务器记录。屏幕底部展示标准AdMob横幅广告。';
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

  @override
  String get helpTooltip => '說明與指南';

  @override
  String get helpTitle => 'URL組件檢查器指南';

  @override
  String get helpProblemSolvedTitle => '解決的問題';

  @override
  String get helpProblemSolvedContent =>
      '在不發起任何網路請求的情況下，離線解析並解碼複雜的網址，拆解為協議、主機、連接埠、路徑、排序查詢參數及錨點。';

  @override
  String get helpHowToUseTitle => '使用方法';

  @override
  String get helpHowToUseContent =>
      '將HTTP或HTTPS網址貼上或輸入至欄位中。應用程式將即時解析並解碼所有網址分段與查詢參數。';

  @override
  String get helpReadingResultsTitle => '查看結果';

  @override
  String get helpReadingResultsContent =>
      '清楚列出協議（Scheme）、主機名、連接埠、路徑、錨點片段，以及已解碼百分比編碼的鍵值對查詢參數列表。';

  @override
  String get helpExampleTitle => '範例';

  @override
  String get helpExampleContent =>
      '輸入: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\n主機: example.com，連接埠: 8080，路徑: /search\n查詢: q = \"flutter dev\"，lang = \"ko\"\n錨點: top。';

  @override
  String get helpLimitsTitle => '驗證與限制';

  @override
  String get helpLimitsContent => '僅為語法URL解析工具。絕不連線存取遠端網址，不檢測網頁安全性、釣魚風險或SSL憑證。';

  @override
  String get helpDataAndPrivacyTitle => '本機資料與廣告';

  @override
  String get helpDataAndPrivacyContent =>
      '所有網址解析均在裝置本機完成，無網路請求、無瀏覽器導向與伺服器紀錄。螢幕底部顯示標準AdMob橫幅廣告。';
}
