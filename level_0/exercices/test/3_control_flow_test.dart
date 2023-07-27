import 'package:test/test.dart';

void main() {
  // https://dart.dev/guides/language/language-tour#control-flow-statements

  test('If else statements', () {
    var a = 5;
    String result;
    if (...){ // complétez cette condition pour que result soit "positive" si a>0
      result = "positive";
    } else {
      result = "non-positive";
    }

    expect(result, equals("positive"));
  });

  test('For loop', () {
    var sum = 0;
    for(var i=1; i<=5; ...){ // complétez cette boucle pour que sum soit la somme des nombres de 1 à 5
      sum += i;
    }

    expect(sum, equals(15));
  });

  test('Switch case', () {
    var operation = 'multiply';
    var a = 5;
    var b = 2;
    var result;
    switch (...){ // complétez ce switch pour que result soit a*b si operation est "multiply"
      case 'multiply':
        result = a * b;
        break;
      default:
        result = a + b;
        break;
    }

    expect(result, equals(10));
  });
}
