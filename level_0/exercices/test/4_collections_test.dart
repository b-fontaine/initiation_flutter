import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour#collections

  test('Lists', () {
    List<int> numbers = [...]; // initialisez la liste numbers avec les nombres de 1 à 5
    expect(numbers, equals([1, 2, 3, 4, 5]));
  });

  test('Maps', () {
    Map<String, int> wordCount = {
      "Hello": 1,
      ... // complétez cette map pour que "World" soit mappé à 2
    };
    expect(wordCount, equals({"Hello": 1, "World": 2}));
  });

  test('List and Map methods', () {
    List<int> numbers = [1, 2, 3, 4, 5];
    var sum = numbers.reduce(...); // utilisez la fonction reduce pour calculer la somme des nombres

    Map<String, int> wordCount = {"Hello": 1, "World": 2};
    var containsHello = wordCount.containsKey(...); // vérifiez si la map contient la clé "Hello"

    expect(sum, equals(15));
    expect(containsHello, equals(true));
  });
}
