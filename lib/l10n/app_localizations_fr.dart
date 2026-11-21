// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Inspecteur de composants d’URL';

  @override
  String get appDescription =>
      'Inspectez les composants d’une URL et ses paramètres ordonnés uniquement sur cet appareil. L’adresse n’est ni ouverte ni envoyée.';

  @override
  String get languageMenuTooltip => 'Choisir la langue';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get appearanceTooltip => 'Choisir l’apparence';

  @override
  String get appearanceMaterial => 'Matériel';

  @override
  String get appearanceFlat => 'Plat';

  @override
  String get appearanceSoft => 'Doux';

  @override
  String get urlInputLabel => 'URL à inspecter';

  @override
  String get urlInputHint => 'https://example.com/path?key=value';

  @override
  String get inspectUrl => 'Inspecter l’URL';

  @override
  String get clearUrl => 'Effacer l’URL';

  @override
  String get inspectionResult => 'Résultat de l’inspection';

  @override
  String get scheme => 'Schéma';

  @override
  String get host => 'Hôte';

  @override
  String get port => 'Port';

  @override
  String get path => 'Chemin';

  @override
  String get fragment => 'Fragment';

  @override
  String get defaultValue => 'Par défaut';

  @override
  String get noneValue => 'Aucun';

  @override
  String componentValue(String label, String value) {
    return '$label : $value';
  }

  @override
  String queryCount(int count) {
    return 'Paramètres de requête : $count';
  }

  @override
  String queryParameter(String name, String value) {
    return '$name = $value';
  }

  @override
  String decodedParameter(String name, String value) {
    return 'Décodé : $name = $value';
  }

  @override
  String get errorEmpty => 'Saisissez une URL à inspecter';

  @override
  String get errorAbsolute =>
      'Saisissez une URL absolue valide avec un schéma et un hôte';

  @override
  String get errorScheme => 'Seules les URL HTTP et HTTPS sont acceptées';

  @override
  String get errorTooLong => 'L’URL est trop longue';

  @override
  String get errorEncoding =>
      'L’URL contient un codage en pourcentage incorrect ou un UTF-8 non valide';
}
