// https://www.codewars.com/kata/525f50e3b73515a6db000b83

import "package:test/test.dart";

String createPhoneNumber(List<int> numbers) {
  final n = numbers.join('');
  return '(${n.substring(0, 3)}) ${n.substring(3, 6)}-${n.substring(6)}';
}

void main() {
  group("Basic tests", () {
    test(
        'Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),
            equals('(123) 456-7890')));
    test(
        'Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]',
        () => expect(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]),
            equals('(111) 111-1111')));
    test(
        'Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]',
        () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]),
            equals('(123) 456-7890')));
  });
}
