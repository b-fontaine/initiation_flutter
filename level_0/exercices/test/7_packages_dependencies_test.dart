import 'package:test/test.dart';
// Importez le package 'collection' ici.

void main() {
  // https://dart.dev/guides/packages

  test('Using a package', () {
    var list1 = [1, 2, 3];
    var list2 = [1, 2, 3];
    var areEqual = ... // Utilisez le ListEquality du package 'collection' pour comparer list1 et list2.
    
    expect(areEqual, equals(true));
  });
}
