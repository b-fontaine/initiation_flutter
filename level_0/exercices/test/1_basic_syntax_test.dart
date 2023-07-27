import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour

  test('Basic syntax', () {
    var a = ... // initialisez 'a' à 5
    var b = ... // initialisez 'b' à 10
    
    expect(a, equals(5));
    expect(b, equals(10));
  });
  
  test('String concatenation', () {
    var a = "Hello, ";
    var b = ...; // assignez à 'b' la chaîne de caractères "World!"
    var c = a + b;

    expect(c, equals("Hello, World!"));
  });

  test('Simple arithmetic', () {
    var a = 10;
    var b = 5;
    var c = ...; // calculez la somme de 'a' et 'b'

    expect(c, equals(15));
  });
}
