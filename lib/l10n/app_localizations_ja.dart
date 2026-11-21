// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'URL構成要素インスペクター';

  @override
  String get appDescription =>
      'URLの構成要素と順序を保ったクエリパラメータを端末内だけで確認します。アドレスを開いたり送信したりしません。';

  @override
  String get languageMenuTooltip => '言語を選択';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get appearanceTooltip => '外観を選択';

  @override
  String get appearanceMaterial => 'マテリアル';

  @override
  String get appearanceFlat => 'フラット';

  @override
  String get appearanceSoft => 'ソフト';

  @override
  String get urlInputLabel => '調べるURL';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'URLを調べる';

  @override
  String get clearUrl => 'URLを消去';

  @override
  String get inspectionResult => '解析結果';

  @override
  String get scheme => 'スキーム';

  @override
  String get host => 'ホスト';

  @override
  String get port => 'ポート';

  @override
  String get path => 'パス';

  @override
  String get fragment => 'フラグメント';

  @override
  String get defaultValue => '既定値';

  @override
  String get noneValue => 'なし';

  @override
  String componentValue(String label, String value) {
    return '$label: $value';
  }

  @override
  String queryCount(int count) {
    return 'クエリパラメータ: $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'デコード後: $name = $value';
  }

  @override
  String get errorEmpty => '調べるURLを入力してください';

  @override
  String get errorAbsolute => 'スキームとホストを含む有効な絶対URLを入力してください';

  @override
  String get errorScheme => 'HTTPとHTTPSのURLのみ対応しています';

  @override
  String get errorTooLong => 'URLが長すぎます';

  @override
  String get errorEncoding => 'URLに不正なパーセントエンコードまたは無効なUTF-8があります';
}
