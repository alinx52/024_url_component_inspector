// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'فاحص مكوّنات عنوان URL';

  @override
  String get appDescription =>
      'افحص مكوّنات عنوان URL ومعلمات الاستعلام بترتيبها على هذا الجهاز فقط. لن يُفتح العنوان أو يُرسل.';

  @override
  String get languageMenuTooltip => 'اختيار اللغة';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get appearanceTooltip => 'اختيار المظهر';

  @override
  String get appearanceMaterial => 'مادي';

  @override
  String get appearanceFlat => 'مسطّح';

  @override
  String get appearanceSoft => 'ناعم';

  @override
  String get urlInputLabel => 'عنوان URL المراد فحصه';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'فحص عنوان URL';

  @override
  String get clearUrl => 'مسح عنوان URL';

  @override
  String get inspectionResult => 'نتيجة الفحص';

  @override
  String get scheme => 'المخطط';

  @override
  String get host => 'المضيف';

  @override
  String get port => 'المنفذ';

  @override
  String get path => 'المسار';

  @override
  String get fragment => 'الجزء';

  @override
  String get defaultValue => 'الافتراضي';

  @override
  String get noneValue => 'لا يوجد';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'معلمات الاستعلام: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'بعد فك الترميز: $name = $value';
  }

  @override
  String get errorEmpty => 'أدخل عنوان URL لفحصه';

  @override
  String get errorAbsolute =>
      'أدخل عنوان URL مطلقًا صالحًا يتضمن مخططًا ومضيفًا';

  @override
  String get errorScheme => 'تُدعم عناوين HTTP وHTTPS فقط';

  @override
  String get errorTooLong => 'عنوان URL طويل جدًا';

  @override
  String get errorEncoding =>
      'يحتوي عنوان URL على ترميز مئوي غير صحيح أو UTF-8 غير صالح';

  @override
  String get helpTooltip => 'المساعدة والدليل';

  @override
  String get helpTitle => 'دليل فاحص مكونات الروابط (URL)';

  @override
  String get helpProblemSolvedTitle => 'المشكلة التي يعالجها';

  @override
  String get helpProblemSolvedContent =>
      'يحلل ويفك ترميز الروابط المعقدة إلى مكونات منظمة (البروتوكول، المضيف، المنفذ، المسار، معلمات الاستعلام، الجزء) دون اتصال بالإنترنت.';

  @override
  String get helpHowToUseTitle => 'طريقة الاستخدام';

  @override
  String get helpHowToUseContent =>
      'الصق عنوان URL (HTTP أو HTTPS) في الحقل. يحلل التطبيق ويفك ترميز جميع أجزاء الرابط في الوقت الفعلي.';

  @override
  String get helpReadingResultsTitle => 'قراءة النتائج';

  @override
  String get helpReadingResultsContent =>
      'يعرض البروتوكول، واسم المضيف، والمنفذ، والمسار، والجزء، وقائمة مفصلة بمفاتيح وقيم معلمات الاستعلام المفكوكة.';

  @override
  String get helpExampleTitle => 'مثال توضيحي';

  @override
  String get helpExampleContent =>
      'الإدخال: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nالمضيف: example.com، المنفذ: 8080، المسار: search/\nالاستعلام: \"q = \"flutter dev و \"lang = \"ko\nالجزء: top.';

  @override
  String get helpLimitsTitle => 'التحقق والقيود';

  @override
  String get helpLimitsContent =>
      'محلل نحوي للروابط فقط. لا يفتح الروابط ولا يتحقق من أمان المواقع أو صحة شهادات SSL.';

  @override
  String get helpDataAndPrivacyTitle => 'البيانات المحلية والإعلانات';

  @override
  String get helpDataAndPrivacyContent =>
      'يتم فحص جميع الروابط محليًا دون أي طلبات شبكية أو فتح للمتصفح. يظهر شريط إعلاني قياسي من AdMob أسفل الشاشة.';
}
