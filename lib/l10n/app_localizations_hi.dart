// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'URL घटक निरीक्षक';

  @override
  String get appDescription =>
      'URL के घटकों और क्रमबद्ध क्वेरी पैरामीटर की जाँच केवल इस डिवाइस पर करें। पता न खोला जाता है, न भेजा जाता है।';

  @override
  String get languageMenuTooltip => 'भाषा चुनें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get appearanceTooltip => 'रूप चुनें';

  @override
  String get appearanceMaterial => 'मटेरियल';

  @override
  String get appearanceFlat => 'समतल';

  @override
  String get appearanceSoft => 'कोमल';

  @override
  String get urlInputLabel => 'जाँचने के लिए URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'URL जाँचें';

  @override
  String get clearUrl => 'URL मिटाएँ';

  @override
  String get inspectionResult => 'जाँच परिणाम';

  @override
  String get scheme => 'स्कीम';

  @override
  String get host => 'होस्ट';

  @override
  String get port => 'पोर्ट';

  @override
  String get path => 'पथ';

  @override
  String get fragment => 'फ़्रैगमेंट';

  @override
  String get defaultValue => 'डिफ़ॉल्ट';

  @override
  String get noneValue => 'कोई नहीं';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'क्वेरी पैरामीटर: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'डिकोड किया गया: $name = $value';
  }

  @override
  String get errorEmpty => 'जाँचने के लिए URL दर्ज करें';

  @override
  String get errorAbsolute =>
      'स्कीम और होस्ट वाला मान्य निरपेक्ष URL दर्ज करें';

  @override
  String get errorScheme => 'केवल HTTP और HTTPS URL समर्थित हैं';

  @override
  String get errorTooLong => 'URL बहुत लंबा है';

  @override
  String get errorEncoding =>
      'URL में गलत प्रतिशत एन्कोडिंग या अमान्य UTF-8 है';

  @override
  String get helpTooltip => 'सहायता और मार्गदर्शिका';

  @override
  String get helpTitle => 'URL घटक निरीक्षक मार्गदर्शिका';

  @override
  String get helpProblemSolvedTitle => 'समस्या का समाधान';

  @override
  String get helpProblemSolvedContent =>
      'नेटवर्क अनुरोधों के बिना वेब URL को योजना, होस्ट, पोर्ट, पथ, क्वेरी पैरामीटर, और खंड में ऑफ़लाइन पार्स और डिकोड करता है।';

  @override
  String get helpHowToUseTitle => 'उपयोग कैसे करें';

  @override
  String get helpHowToUseContent =>
      'इनपुट बॉक्स में एक वेब URL (HTTP या HTTPS) चिपकाएं। ऐप वास्तविक समय में सभी URL खंडों को पार्स और डिकोड करता है।';

  @override
  String get helpReadingResultsTitle => 'परिणाम कैसे समझें';

  @override
  String get helpReadingResultsContent =>
      'योजना, होस्टनाम, पोर्ट, पथ, खंड और डिकोड किए गए क्वेरी कुंजी और मानों की एक सूची प्रदर्शित करता है।';

  @override
  String get helpExampleTitle => 'उदाहरण';

  @override
  String get helpExampleContent =>
      'इनपुट: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nहोस्ट: example.com, पोर्ट: 8080, पथ: /search\nक्वेरी: q = \"flutter dev\", lang = \"ko\"\nखंड: top।';

  @override
  String get helpLimitsTitle => 'सत्यापन और सीमाएं';

  @override
  String get helpLimitsContent =>
      'केवल वाक्य-विन्यास URL पार्सर है। लिंक नहीं खोलता है और न ही वेब सुरक्षा या SSL प्रमाणपत्रों की पुष्टि करता है।';

  @override
  String get helpDataAndPrivacyTitle => 'स्थानीय डेटा और विज्ञापन';

  @override
  String get helpDataAndPrivacyContent =>
      'सभी URL बिना इंटरनेट अनुरोधों या ब्राउज़र नेविगेशन के डिवाइस पर जांचे जाते हैं। नीचे एक AdMob बैनर दिखाया गया है।';
}
