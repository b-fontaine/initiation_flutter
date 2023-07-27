import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour#functions

  test('Functions', () {
    int add(int a, int b) {
      return ...; // complétez cette fonction pour qu'elle retourne la somme de a et b
    }
    
    expect(add(2, 3), equals(5));
  });

  test('Anonymous function', () {
    var multiply = (...) { // complétez cette fonction anonyme pour qu'elle retourne le produit de a et b
      return a * b;
    };

    expect(multiply(2, 3), equals(6));
  });

  test('Optional parameters', () {
    String joinWithCommas(String a, [String b, String c]) {
      return a + (b != null ? ', ' + b : '') + (c != null ? ', ' + c : '');
    }
    
    expect(joinWithCommas("apple", "banana", "cherry"), equals("apple, banana, cherry"));
    expect(joinWithCommas("apple", "banana"), equals("apple, banana"));
    expect(joinWithCommas("apple"), equals("apple"));
  });
}
