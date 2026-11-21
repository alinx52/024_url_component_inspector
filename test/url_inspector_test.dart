import 'package:flutter_test/flutter_test.dart';
import 'package:url_component_inspector/url_inspector.dart';

void main() {
  test('does not normalize preserved URL representations', () {
    final outcome = inspectUrl(
      'HTTPS://EXAMPLE.COM/A%2fb?x=%2f&x=&literal=a+b#Part%2fOne',
    );
    final result = outcome.value!;
    expect(result.scheme, 'https');
    expect(result.host, 'example.com');
    expect(result.path, '/A%2fb');
    expect(result.parameters.map((item) => item.encodedName), [
      'x',
      'x',
      'literal',
    ]);
    expect(result.parameters.map((item) => item.encodedValue), [
      '%2f',
      '',
      'a+b',
    ]);
    expect(result.parameters.first.decodedValue, '/');
    expect(result.parameters.last.decodedValue, 'a+b');
    expect(result.fragment, 'Part%2fOne');
  });

  test('classifies malformed escapes and invalid UTF-8', () {
    expect(
      inspectUrl('https://example.com/%').error,
      UrlInspectionError.invalidEncoding,
    );
    expect(
      inspectUrl('https://example.com/%C3%28').error,
      UrlInspectionError.invalidEncoding,
    );
  });
}
