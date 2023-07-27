import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour#variables

  test('Data types', () {
    int a = ...; // initialisez 'a' à un entier
    double b = ...; // initialisez 'b' à un nombre à virgule flottante
    bool c = ...; // initialisez 'c' à un booléen
    String d = ...; // initialisez 'd' à une chaîne de caractères

    expect(a, isA<int>());
    expect(b, isA<double>());
    expect(c, isA<bool>());
    expect(d, isA<String>());
  });
  
  test('Type inference', () {
    var a = 5; // Dart infère que 'a' est un entier
    var b = ...; // assignez 'b' à un double
    var c = ...; // assignez 'c' à un booléen
    var d = ...; // assignez 'd' à une chaîne de caractères

    expect(a, isA<int>());
    expect(b, isA<double>());
    expect(c, isA<bool>());
    expect(d, isA<String>());
  });

  test('Final and const', () {
    final a = 5;
    const b = 10;

    expect(a, equals(5));
    expect(b, equals(10));
  });
}
