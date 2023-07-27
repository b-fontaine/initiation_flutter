import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour#classes

  test('Classes and objects', () {
    class Fruit {
      String name;

      Fruit(this.name);
    }

    var apple = ...; // créez une instance de la classe Fruit avec le nom "apple"
    
    expect(apple.name, equals("apple"));
  });

  test('Inheritance', () {
    class Fruit {
      String name;

      Fruit(this.name);
    }

    class Apple extends ... { // faites en sorte que la classe Apple hérite de la classe Fruit
      Apple() : super("apple");
    }

    var apple = Apple();
    
    expect(apple.name, equals("apple"));
    expect(apple, isA<Fruit>());
  });
}
