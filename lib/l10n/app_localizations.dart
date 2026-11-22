import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ru'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'URL Component Inspector'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Inspect URL components and ordered query parameters entirely on this device. The address is never opened or sent.'**
  String get appDescription;

  /// No description provided for @languageMenuTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get languageMenuTooltip;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @appearanceTooltip.
  ///
  /// In en, this message translates to:
  /// **'Choose appearance'**
  String get appearanceTooltip;

  /// No description provided for @appearanceMaterial.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get appearanceMaterial;

  /// No description provided for @appearanceFlat.
  ///
  /// In en, this message translates to:
  /// **'Flat'**
  String get appearanceFlat;

  /// No description provided for @appearanceSoft.
  ///
  /// In en, this message translates to:
  /// **'Soft'**
  String get appearanceSoft;

  /// No description provided for @urlInputLabel.
  ///
  /// In en, this message translates to:
  /// **'URL to inspect'**
  String get urlInputLabel;

  /// No description provided for @urlInputHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/path?key=value'**
  String get urlInputHint;

  /// No description provided for @inspectUrl.
  ///
  /// In en, this message translates to:
  /// **'Inspect URL'**
  String get inspectUrl;

  /// No description provided for @clearUrl.
  ///
  /// In en, this message translates to:
  /// **'Clear URL'**
  String get clearUrl;

  /// No description provided for @inspectionResult.
  ///
  /// In en, this message translates to:
  /// **'Inspection result'**
  String get inspectionResult;

  /// No description provided for @scheme.
  ///
  /// In en, this message translates to:
  /// **'Scheme'**
  String get scheme;

  /// No description provided for @host.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get host;

  /// No description provided for @port.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get port;

  /// No description provided for @path.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get path;

  /// No description provided for @fragment.
  ///
  /// In en, this message translates to:
  /// **'Fragment'**
  String get fragment;

  /// No description provided for @defaultValue.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultValue;

  /// No description provided for @noneValue.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get noneValue;

  /// No description provided for @componentValue.
  ///
  /// In en, this message translates to:
  /// **'{label}: {value}'**
  String componentValue(String label, String value);

  /// No description provided for @queryCount.
  ///
  /// In en, this message translates to:
  /// **'Query parameters: {count}'**
  String queryCount(int count);

  /// No description provided for @queryParameter.
  ///
  /// In en, this message translates to:
  /// **'{name} = {value}'**
  String queryParameter(String name, String value);

  /// No description provided for @decodedParameter.
  ///
  /// In en, this message translates to:
  /// **'Decoded: {name} = {value}'**
  String decodedParameter(String name, String value);

  /// No description provided for @errorEmpty.
  ///
  /// In en, this message translates to:
  /// **'Enter a URL to inspect'**
  String get errorEmpty;

  /// No description provided for @errorAbsolute.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid absolute URL with a scheme and host'**
  String get errorAbsolute;

  /// No description provided for @errorScheme.
  ///
  /// In en, this message translates to:
  /// **'Only HTTP and HTTPS URLs are supported'**
  String get errorScheme;

  /// No description provided for @errorTooLong.
  ///
  /// In en, this message translates to:
  /// **'URL is too long'**
  String get errorTooLong;

  /// No description provided for @errorEncoding.
  ///
  /// In en, this message translates to:
  /// **'URL contains malformed percent encoding or invalid UTF-8'**
  String get errorEncoding;

  /// No description provided for @helpTooltip.
  ///
  /// In en, this message translates to:
  /// **'Help & Guide'**
  String get helpTooltip;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'URL Component Inspector Guide'**
  String get helpTitle;

  /// No description provided for @helpProblemSolvedTitle.
  ///
  /// In en, this message translates to:
  /// **'Problem Solved'**
  String get helpProblemSolvedTitle;

  /// No description provided for @helpProblemSolvedContent.
  ///
  /// In en, this message translates to:
  /// **'Parses and decodes complex web URLs into structured components (scheme, host, port, path, ordered query parameters, fragment) offline without network requests.'**
  String get helpProblemSolvedContent;

  /// No description provided for @helpHowToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use'**
  String get helpHowToUseTitle;

  /// No description provided for @helpHowToUseContent.
  ///
  /// In en, this message translates to:
  /// **'Paste or type a web URL (HTTP or HTTPS) into the input box. The app dissects and decodes all URL segments in real time.'**
  String get helpHowToUseContent;

  /// No description provided for @helpReadingResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading Results'**
  String get helpReadingResultsTitle;

  /// No description provided for @helpReadingResultsContent.
  ///
  /// In en, this message translates to:
  /// **'Displays Scheme, Hostname, Port, Path, Fragment, and an interactive list of Query Keys & Values (with decoded percent-encoding).'**
  String get helpReadingResultsContent;

  /// No description provided for @helpExampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get helpExampleTitle;

  /// No description provided for @helpExampleContent.
  ///
  /// In en, this message translates to:
  /// **'Input: \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nHost: example.com, Port: 8080, Path: /search\nQuery: q = \"flutter dev\", lang = \"ko\"\nFragment: top.'**
  String get helpExampleContent;

  /// No description provided for @helpLimitsTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation & Limitations'**
  String get helpLimitsTitle;

  /// No description provided for @helpLimitsContent.
  ///
  /// In en, this message translates to:
  /// **'Syntactic URL parser only. Does not open links, fetch remote headers, check web safety, or verify domain certificate authenticity.'**
  String get helpLimitsContent;

  /// No description provided for @helpDataAndPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Local Data & Ads'**
  String get helpDataAndPrivacyTitle;

  /// No description provided for @helpDataAndPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'All URLs are inspected on-device without internet requests, browser navigation, or server logging. An AdMob banner is displayed below.'**
  String get helpDataAndPrivacyContent;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pt',
    'ru',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
