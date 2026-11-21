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
}
