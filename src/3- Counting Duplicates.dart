// https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

import "package:test/test.dart";

int duplicateCount(String text) {
  final count = {};
  text.toLowerCase().split('').forEach((char) {
    if (count[char] == null)
      count[char] = 0;
    else
      count[char]++;
  });
  return count.values.where((element) => element > 0).length;
}

void main() {
  test("add", () {
    expect(duplicateCount(""), equals(0));
    expect(duplicateCount("abcde"), equals(0));
    expect(duplicateCount("aabbcde"), equals(2));
    expect(duplicateCount("aabBcde"), equals(2));
    expect(duplicateCount("Indivisibility"), equals(1));
  });
}
