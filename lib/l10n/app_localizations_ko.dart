// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'URL 구성 요소 검사기';

  @override
  String get appDescription =>
      'URL 구성 요소와 순서가 유지된 쿼리 매개변수를 기기에서만 확인합니다. 주소를 열거나 전송하지 않습니다.';

  @override
  String get languageMenuTooltip => '언어 선택';

  @override
  String get privacyPolicy => '개인정보처리방침';

  @override
  String get appearanceTooltip => '화면 스타일 선택';

  @override
  String get appearanceMaterial => '머티리얼';

  @override
  String get appearanceFlat => '플랫';

  @override
  String get appearanceSoft => '소프트';

  @override
  String get urlInputLabel => '검사할 URL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'URL 검사';

  @override
  String get clearUrl => 'URL 지우기';

  @override
  String get inspectionResult => '검사 결과';

  @override
  String get scheme => '스킴';

  @override
  String get host => '호스트';

  @override
  String get port => '포트';

  @override
  String get path => '경로';

  @override
  String get fragment => '프래그먼트';

  @override
  String get defaultValue => '기본값';

  @override
  String get noneValue => '없음';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return '쿼리 매개변수: $count개';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return '디코딩됨: $name = $value';
  }

  @override
  String get errorEmpty => '검사할 URL을 입력하세요';

  @override
  String get errorAbsolute => '스킴과 호스트가 있는 유효한 절대 URL을 입력하세요';

  @override
  String get errorScheme => 'HTTP 및 HTTPS URL만 지원됩니다';

  @override
  String get errorTooLong => 'URL이 너무 깁니다';

  @override
  String get errorEncoding => 'URL에 잘못된 퍼센트 인코딩 또는 유효하지 않은 UTF-8이 있습니다';

  @override
  String get helpTooltip => '도움말 및 안내';

  @override
  String get helpTitle => 'URL 구성요소 검사기 안내';

  @override
  String get helpProblemSolvedTitle => '해결하는 문제';

  @override
  String get helpProblemSolvedContent =>
      '복잡하거나 인코딩된 웹 주소를 네트워크 연결이나 브라우저 실행 없이 스킴, 호스트, 포트, 경로, 쿼리 매개변수 및 프래그먼트로 안전하게 분해하고 디코딩합니다.';

  @override
  String get helpHowToUseTitle => '사용 방법';

  @override
  String get helpHowToUseContent =>
      '검사할 HTTP 또는 HTTPS 웹 주소를 입력창에 붙여넣으세요. 입력하는 즉시 URL의 모든 구성요소와 쿼리 매개변수가 실시간으로 디코딩되어 분석됩니다.';

  @override
  String get helpReadingResultsTitle => '결과 확인';

  @override
  String get helpReadingResultsContent =>
      '스킴(Scheme), 호스트, 포트, 경로, 프래그먼트와 함께 퍼센트 인코딩이 해제된 각 쿼리 파라미터의 키와 값을 깔끔한 표로 보여줍니다.';

  @override
  String get helpExampleTitle => '대표 예시';

  @override
  String get helpExampleContent =>
      '입력: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\n호스트: example.com, 포트: 8080, 경로: /search\n쿼리: q = \"flutter dev\", lang = \"ko\"\n프래그먼트: top.';

  @override
  String get helpLimitsTitle => '검증 및 제한사항';

  @override
  String get helpLimitsContent =>
      '문법적 URL 구문 분석기입니다. 해당 웹 주소로 접속하거나 링크의 실존 여부, 악성코드 유무, SSL 인증서의 유효성을 진단하거나 보증하지 않습니다.';

  @override
  String get helpDataAndPrivacyTitle => '로컬 데이터 및 광고';

  @override
  String get helpDataAndPrivacyContent =>
      '입력한 URL은 인터넷 통신이나 브라우저 로딩 없이 기기 내부에서만 파싱됩니다. 화면 하단에 Google AdMob 표준 배너 광고가 표시됩니다.';
}
