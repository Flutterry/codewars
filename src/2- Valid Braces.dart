// https://www.codewars.com/kata/5277c8a221e209d3f6000b56

import "package:test/test.dart";

bool validBraces(String braces) {
  int length;
  do {
    length = braces.length;
    braces = braces.replaceAll(RegExp(r'(\(\))|(\[\])|(\{\})'), '');
  } while (braces.length != length);
  return braces.isEmpty;
}

void main() {
  test('Example tests', () {
    expect(validBraces('()'), isTrue);
    expect(validBraces('[(])'), isFalse);
  });
}
