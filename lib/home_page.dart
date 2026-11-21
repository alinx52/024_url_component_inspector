import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ad_banner.dart';
import 'app_config.dart';
import 'app_language_menu.dart';
import 'design_system.dart';
import 'l10n/app_localizations.dart';
import 'url_inspector.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
    required this.designStyle,
    required this.onDesignStyleChanged,
  });

  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;
  final String designStyle;
  final ValueChanged<String> onDesignStyleChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  UrlInspection? _result;
  UrlInspectionError? _error;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _inspect() {
    final outcome = inspectUrl(_controller.text);
    setState(() {
      _error = outcome.error;
      if (outcome.value != null) _result = outcome.value;
    });
  }

  void _clear() {
    _controller.clear();
    setState(() {
      _error = null;
      _result = null;
    });
  }

  String? _errorText(AppLocalizations l10n) => switch (_error) {
    UrlInspectionError.empty => l10n.errorEmpty,
    UrlInspectionError.invalidAbsolute => l10n.errorAbsolute,
    UrlInspectionError.unsupportedScheme => l10n.errorScheme,
    UrlInspectionError.tooLong => l10n.errorTooLong,
    UrlInspectionError.invalidEncoding => l10n.errorEncoding,
    null => null,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          AppLanguageMenu(
            locale: widget.locale,
            onSelected: widget.onLocaleChanged,
            tooltip: l10n.languageMenuTooltip,
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SafeArea(
            top: false,
            bottom: false,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppAppearanceMenu(
                    selectedStyle: widget.designStyle,
                    onSelected: widget.onDesignStyleChanged,
                  ),
                  const SizedBox(width: 8),
                  TextButton.icon(
                    onPressed: () => unawaited(
                      launchUrl(
                        Uri.parse(privacyPolicyUrl),
                        mode: LaunchMode.externalApplication,
                      ),
                    ),
                    icon: const Icon(Icons.privacy_tip_outlined, size: 18),
                    label: Text(l10n.privacyPolicy),
                  ),
                ],
              ),
            ),
          ),
          const Center(child: AdBanner()),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
          children: [
            Text(
              l10n.appDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            TextField(
              key: const ValueKey('url-input'),
              controller: _controller,
              keyboardType: TextInputType.url,
              textInputAction: TextInputAction.done,
              autocorrect: false,
              enableSuggestions: false,
              onSubmitted: (_) => _inspect(),
              decoration: InputDecoration(
                labelText: l10n.urlInputLabel,
                hintText: l10n.urlInputHint,
                errorText: _errorText(l10n),
                prefixIcon: const Icon(Icons.link),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    key: const ValueKey('inspect-url'),
                    onPressed: _inspect,
                    icon: const Icon(Icons.account_tree_outlined),
                    label: Text(l10n.inspectUrl),
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton.icon(
                  key: const ValueKey('clear-url'),
                  onPressed: _clear,
                  icon: const Icon(Icons.clear),
                  label: Text(l10n.clearUrl),
                ),
              ],
            ),
            if (_result case final result?) ...[
              const SizedBox(height: 16),
              _ResultPanel(result: result),
            ],
          ],
        ),
      ),
    );
  }
}

class _ResultPanel extends StatelessWidget {
  const _ResultPanel({required this.result});

  final UrlInspection result;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final values = <(IconData, String, String)>[
      (Icons.code, l10n.scheme, result.scheme),
      (Icons.dns_outlined, l10n.host, result.host),
      (Icons.settings_ethernet, l10n.port, result.port ?? l10n.defaultValue),
      (Icons.route_outlined, l10n.path, result.path),
    ];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.fact_check_outlined,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(l10n.inspectionResult, style: theme.textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 8),
            for (final (icon, label, value) in values)
              _ComponentRow(
                icon: icon,
                text: l10n.componentValue(label, value),
              ),
            const Divider(height: 20),
            Text(
              l10n.queryCount(result.parameters.length),
              style: theme.textTheme.labelLarge,
            ),
            if (result.parameters.isEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(l10n.noneValue),
              )
            else
              for (final parameter in result.parameters)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.queryParameter(
                          parameter.encodedName,
                          parameter.encodedValue,
                        ),
                      ),
                      if (parameter.hasDecodedDifference)
                        Text(
                          l10n.decodedParameter(
                            parameter.decodedName,
                            parameter.decodedValue,
                          ),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                    ],
                  ),
                ),
            const Divider(height: 20),
            _ComponentRow(
              icon: Icons.tag,
              text: l10n.componentValue(
                l10n.fragment,
                result.fragment == null || result.fragment!.isEmpty
                    ? l10n.noneValue
                    : result.fragment!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ComponentRow extends StatelessWidget {
  const _ComponentRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Expanded(child: SelectableText(text)),
      ],
    ),
  );
}
