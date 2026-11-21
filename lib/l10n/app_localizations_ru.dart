// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Инспектор компонентов URL';

  @override
  String get appDescription =>
      'Проверяйте компоненты URL и упорядоченные параметры запроса только на этом устройстве. Адрес не открывается и не отправляется.';

  @override
  String get languageMenuTooltip => 'Выбрать язык';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get appearanceTooltip => 'Выбрать оформление';

  @override
  String get appearanceMaterial => 'Материальное';

  @override
  String get appearanceFlat => 'Плоское';

  @override
  String get appearanceSoft => 'Мягкое';

  @override
  String get urlInputLabel => 'URL для проверки';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Проверить URL';

  @override
  String get clearUrl => 'Очистить URL';

  @override
  String get inspectionResult => 'Результат проверки';

  @override
  String get scheme => 'Схема';

  @override
  String get host => 'Хост';

  @override
  String get port => 'Порт';

  @override
  String get path => 'Путь';

  @override
  String get fragment => 'Фрагмент';

  @override
  String get defaultValue => 'По умолчанию';

  @override
  String get noneValue => 'Нет';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'Параметры запроса: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'После декодирования: $name = $value';
  }

  @override
  String get errorEmpty => 'Введите URL для проверки';

  @override
  String get errorAbsolute =>
      'Введите допустимый абсолютный URL со схемой и хостом';

  @override
  String get errorScheme => 'Поддерживаются только URL HTTP и HTTPS';

  @override
  String get errorTooLong => 'URL слишком длинный';

  @override
  String get errorEncoding =>
      'URL содержит неверное процентное кодирование или недопустимый UTF-8';
}
