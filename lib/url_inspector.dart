enum UrlInspectionError {
  empty,
  invalidAbsolute,
  unsupportedScheme,
  tooLong,
  invalidEncoding,
}

class UrlQueryParameter {
  const UrlQueryParameter({
    required this.encodedName,
    required this.encodedValue,
    required this.decodedName,
    required this.decodedValue,
  });

  final String encodedName;
  final String encodedValue;
  final String decodedName;
  final String decodedValue;

  bool get hasDecodedDifference =>
      encodedName != decodedName || encodedValue != decodedValue;
}

class UrlInspection {
  const UrlInspection({
    required this.scheme,
    required this.host,
    required this.port,
    required this.path,
    required this.parameters,
    required this.fragment,
  });

  final String scheme;
  final String host;
  final String? port;
  final String path;
  final List<UrlQueryParameter> parameters;
  final String? fragment;
}

class UrlInspectionOutcome {
  const UrlInspectionOutcome.success(this.value) : error = null;
  const UrlInspectionOutcome.failure(this.error) : value = null;

  final UrlInspection? value;
  final UrlInspectionError? error;
}

UrlInspectionOutcome inspectUrl(String input) {
  if (input.length > 4096) {
    return const UrlInspectionOutcome.failure(UrlInspectionError.tooLong);
  }
  final source = input.trim();
  if (source.isEmpty) {
    return const UrlInspectionOutcome.failure(UrlInspectionError.empty);
  }

  try {
    // decodeComponent validates every percent escape and its UTF-8 byte sequence.
    // Its result is discarded so the URL's original spelling remains untouched.
    Uri.decodeComponent(source);
  } on ArgumentError {
    return const UrlInspectionOutcome.failure(
      UrlInspectionError.invalidEncoding,
    );
  } on FormatException {
    return const UrlInspectionOutcome.failure(
      UrlInspectionError.invalidEncoding,
    );
  }

  final uri = Uri.tryParse(source);
  if (uri == null ||
      uri.scheme.isEmpty ||
      !uri.hasAuthority ||
      uri.host.isEmpty) {
    return const UrlInspectionOutcome.failure(
      UrlInspectionError.invalidAbsolute,
    );
  }
  final scheme = _asciiLowercase(uri.scheme);
  if (scheme != 'http' && scheme != 'https') {
    return const UrlInspectionOutcome.failure(
      UrlInspectionError.unsupportedScheme,
    );
  }

  final questionMark = source.indexOf('?');
  final hash = source.indexOf('#');
  String? rawQuery;
  if (questionMark >= 0 && (hash < 0 || questionMark < hash)) {
    rawQuery = source.substring(
      questionMark + 1,
      hash < 0 ? source.length : hash,
    );
  }
  final parameters = <UrlQueryParameter>[];
  if (rawQuery != null && rawQuery.isNotEmpty) {
    for (final field in rawQuery.split('&')) {
      final equals = field.indexOf('=');
      final name = equals < 0 ? field : field.substring(0, equals);
      final value = equals < 0 ? '' : field.substring(equals + 1);
      parameters.add(
        UrlQueryParameter(
          encodedName: name,
          encodedValue: value,
          decodedName: Uri.decodeComponent(name),
          decodedValue: Uri.decodeComponent(value),
        ),
      );
    }
  }

  return UrlInspectionOutcome.success(
    UrlInspection(
      scheme: scheme,
      host: _asciiLowercase(uri.host),
      port: uri.hasPort ? uri.port.toString() : null,
      path: _rawPath(source),
      parameters: List.unmodifiable(parameters),
      fragment: hash < 0 ? null : source.substring(hash + 1),
    ),
  );
}

String _rawPath(String source) {
  final schemeEnd = source.indexOf(':');
  final authorityStart = schemeEnd + 3;
  var pathEnd = source.length;
  final questionMark = source.indexOf('?', authorityStart);
  final hash = source.indexOf('#', authorityStart);
  if (questionMark >= 0 && questionMark < pathEnd) pathEnd = questionMark;
  if (hash >= 0 && hash < pathEnd) pathEnd = hash;
  final slash = source.indexOf('/', authorityStart);
  if (slash < 0 || slash >= pathEnd) return '/';
  return source.substring(slash, pathEnd);
}

String _asciiLowercase(String value) => value.replaceAllMapped(
  RegExp('[A-Z]'),
  (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 32),
);
