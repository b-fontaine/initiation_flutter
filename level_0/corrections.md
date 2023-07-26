# Corrections: Bases de Dart

Avant de commencer les corrections, vous devez configurer votre environnement de développement pour pouvoir écrire et tester vos programmes Dart.

## Configuration de l'environnement de développement

1. **Installer Dart SDK :** Pour écrire et exécuter des programmes Dart, vous devez installer le Dart SDK. Vous pouvez le télécharger à partir du site officiel de Dart (https://dart.dev/get-dart).

2. **Choisir un éditeur de code :** Vous pouvez écrire du code Dart dans n'importe quel éditeur de texte, mais nous vous recommandons d'utiliser un éditeur de code comme Visual Studio Code (VS Code) ou IntelliJ IDEA qui supporte Dart et fournit des fonctionnalités comme la coloration syntaxique et l'autocomplétion de code.

3. **Exécuter des programmes Dart :** Pour exécuter un programme Dart, ouvrez une invite de commande, naviguez jusqu'au dossier contenant votre fichier Dart, et tapez `dart run yourfile.dart`, où `yourfile.dart` est le nom de votre fichier Dart.

Maintenant que votre environnement est prêt, passons aux corrections des exercices.

## Exercice 1: Syntaxe de base de Dart

Pour imprimer quelque chose dans la console en Dart, nous utilisons la fonction `print`.

```dart
void main() {
  print('Hello, World!');
}
```

## Exercice 2: Types de données et variables

En Dart, vous pouvez déclarer des variables en utilisant `var` ou en spécifiant explicitement le type de données.

```dart
void main() {
  String greeting = 'Hello, World!';
  int age = 25;
  double pi = 3.1416;
  bool isDartCool = true;
  
  print(greeting);
  print(age);
  print(pi);
  print(isDartCool);
}
```

## Exercice 3: Opérations de base et structures de contrôle

En Dart, vous pouvez obtenir l'entrée de l'utilisateur en utilisant le package `dart:io`.

```dart
import 'dart:io';

void main() {
  print('Enter two numbers:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  
  int sum = num1 + num2;
  print('The sum is $sum');

  if (num1 > num2) {
    print('The first number is larger.');
  } else if (num1 < num2) {
    print('The second number is larger.');
  } else {
    print('The numbers are equal.');
  }
}
```

## Exercice 4: Collections - Listes

En Dart, vous pouvez déclarer une liste en utilisant `List`.

```dart
void main() {
  List<int> numbers = [1, 2, 3];
  print(numbers);
  
  numbers.add(4);
  print(numbers);
  
  numbers.removeAt(0);
  print(numbers);
  
  numbers[1] = 5;
  print(numbers);
}
```

## Exercice 5: Collections - Maps

En Dart, vous pouvez déclarer une Map en utilisant `Map`.

```dart
void main() {
  Map<String, int> studentGrades = {
    'Alice': 85,
    'Bob': 90,
    'Charlie': 95
  };
  print(studentGrades);
  
  studentGrades['Dave'] = 80;
  print(studentGrades);
  
  studentGrades.remove('Alice');
  print(studentGrades);
  
  studentGrades['Bob'] = 92;
  print(studentGrades);
}
```

## Exercice 6: Fonctions et paramètres

En Dart, vous pouvez déclarer une fonction en utilisant `void` si elle ne retourne rien, ou en spécifiant le type de retour si elle retourne quelque chose.

```dart
void main() {
  int sum = addNumbers(3, 4);
  print(sum);
}

int addNumbers(int num1, int num2) {
  return num1 + num2;
}
```

## Exercice 7: Classes, objets et héritage

En Dart, vous pouvez déclarer une classe en utilisant `class`.

```dart
void main() {
  Student alice = Student('Alice', 'CS');
  alice.study();
  alice.takeExam();
}

class Person {
  String name;

  Person(this.name);

  void eat() {
    print('$name is eating.');
  }
}

class Student extends Person {
  String major;

  Student(String name, this.major) : super(name);

  void study() {
    print('$name is studying $major.');
  }

  void takeExam() {
    print('$name is taking an exam.');
  }
}
```

## Exercice 8: Packages et gestion des dépendances

Pour cet exercice, la correction dépendra du package que vous avez choisi d'utiliser. Assurez-vous d'ajouter le package à votre fichier `pubspec.yaml` et d'exécuter `dart pub get` pour télécharger le package.

## Exercice 9: Asynchronicité - Futures

En Dart, vous pouvez créer un `Future` qui se résout après un certain délai en utilisant `Future.delayed`.

```dart
void main() {
  print('Fetching user data...');
  fetchUserData().then((String data) {
    print(data);
  });
}

Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 3), () => 'User data loaded');
}
```

## Exercice 10: Asynchronicité - async et await

En Dart, vous pouvez utiliser `async` et `await` pour gérer les `Futures` de manière plus lisible.

```dart
void main() async {
  print('Fetching user data...');
  String data = await fetchUserData();
  print(data);
}

Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 3), () => 'User data loaded');
}
```
Cette série d'exercices et de corrections vous a guidé à travers les bases du Dart. En suivant ces étapes et en pratiquant avec vos propres programmes, vous pouvez devenir de plus en

 plus compétent dans le codage avec Dart.