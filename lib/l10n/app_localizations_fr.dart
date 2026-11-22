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

  @override
  String get helpTooltip => 'Aide et guide';

  @override
  String get helpTitle => 'Guide de l\'inspecteur de composants d\'URL';

  @override
  String get helpProblemSolvedTitle => 'Problème résolu';

  @override
  String get helpProblemSolvedContent =>
      'Analyse et décode les URLs complexes en composants structurés (schéma, hôte, port, chemin, paramètres, fragment) hors ligne.';

  @override
  String get helpHowToUseTitle => 'Mode d\'emploi';

  @override
  String get helpHowToUseContent =>
      'Collez ou saisissez une URL web (HTTP ou HTTPS). L\'application dissèque et décode tous les segments en direct.';

  @override
  String get helpReadingResultsTitle => 'Lecture des résultats';

  @override
  String get helpReadingResultsContent =>
      'Affiche le schéma, l\'hôte, le port, le chemin, le fragment et la liste des clés/valeurs de requête décodées.';

  @override
  String get helpExampleTitle => 'Exemple';

  @override
  String get helpExampleContent =>
      'Entrée : \"https://example.com:8080/search?q=flutter+dev&lang=ko#top\"\nHôte : example.com, Port : 8080, Chemin : /search\nRequête : q = \"flutter dev\", lang = \"ko\"\nFragment : top.';

  @override
  String get helpLimitsTitle => 'Validations et limites';

  @override
  String get helpLimitsContent =>
      'Analyseur syntaxique d\'URL uniquement. N\'ouvre aucun lien, ne vérifie ni la sécurité du site ni les certificats SSL.';

  @override
  String get helpDataAndPrivacyTitle => 'Données locales et publicités';

  @override
  String get helpDataAndPrivacyContent =>
      'Toutes les URLs sont inspectées localement sans requêtes web ni navigation. Une bannière AdMob est affichée en bas.';
}
