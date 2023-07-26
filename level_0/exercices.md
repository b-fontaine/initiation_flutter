# Exercices: Bases de Dart

## Configuration de l'environnement de développement

1. **Installer Dart SDK :** Pour écrire et exécuter des programmes Dart, vous devez installer le Dart SDK. Vous pouvez le télécharger à partir du site officiel de Dart (https://dart.dev/get-dart).

2. **Choisir un éditeur de code :** Vous pouvez écrire du code Dart dans n'importe quel éditeur de texte, mais nous vous recommandons d'utiliser un éditeur de code comme Visual Studio Code (VS Code) ou IntelliJ IDEA qui supporte Dart et fournit des fonctionnalités comme la coloration syntaxique et l'autocomplétion de code.

3. **Exécuter des programmes Dart :** Pour exécuter un programme Dart, ouvrez une invite de commande, naviguez jusqu'au dossier contenant votre fichier Dart, et tapez `dart run yourfile.dart`, où `yourfile.dart` est le nom de votre fichier Dart.

## Exercice 1: Syntaxe de base de Dart

**Concept:** La syntaxe de base est l'élément fondamental de tout langage de programmation. En Dart, vous apprendrez comment déclarer des variables, utiliser des opérateurs de base, écrire des commentaires, etc.

**Exercice:** Écrivez un programme simple en Dart qui imprime "Hello, World!" dans la console.

---

## Exercice 2: Types de données et variables

**Concept:** Dart est un langage fortement typé. Il existe plusieurs types de données, comme String, int, double, bool, etc. Vous pouvez stocker des valeurs dans des variables.

**Exercice:** Déclarez des variables de différents types de données en Dart (String, int, double, bool), attribuez-leur des valeurs et imprimez-les dans la console.

---

## Exercice 3: Opérations de base et structures de contrôle

**Concept:** Dart comprend plusieurs opérateurs arithmétiques, de comparaison et logiques. Les structures de contrôle comprennent des déclarations telles que `if`, `else`, `switch`, `for`, `while`, etc.

**Exercice:** Écrivez un programme en Dart qui demande à l'utilisateur deux nombres, réalise des opérations arithmétiques de base sur ces nombres et affiche les résultats. Utilisez également une structure de contrôle pour comparer les deux nombres.

---

## Exercice 4: Collections - Listes

**Concept:** Dart comprend des collections telles que List et Map. Une List est une collection ordonnée d'éléments.

**Exercice:** Créez une liste d'entiers en Dart, ajoutez quelques éléments, supprimez un élément et modifiez un élément. Imprimez la liste à chaque étape.

---

## Exercice 5: Collections - Maps

**Concept:** Une Map est une collection de paires clé-valeur.

**Exercice:** Créez une Map en Dart qui représente un étudiant. Utilisez le nom de l'étudiant comme clé et la note de l'étudiant comme valeur. Ajoutez quelques étudiants à la Map, supprimez un étudiant et modifiez la note d'un étudiant. Imprimez la Map à chaque étape.

---

## Exercice 6: Fonctions et paramètres

**Concept:** Une fonction est un bloc de code qui effectue une tâche spécifique. En Dart, vous pouvez déclarer des fonctions avec ou sans paramètres.

**Exercice:** Écrivez une fonction en Dart qui prend deux nombres en paramètres et renvoie leur somme. Appelez cette fonction avec des nombres différents et imprimez les résultats.

---

## Exercice 7: Classes, objets et héritage

**Concept:** Dart est un langage orienté objet. Vous pouvez déclarer des classes et créer des objets à partir de ces classes. Dart prend également en charge l'héritage, un mécanisme par lequel une classe peut hériter des champs et des méthodes d'une autre classe.

**Exercice:** Créez une classe `Person` avec quelques attributs et méthodes. Créez une autre classe `Student` qui hérite de `Person`. Créez des objets à partir de ces classes et utilisez leurs méthodes.

---

## Exercice 8: Packages et gestion des dépendances

**Concept:** Dart utilise un système de packages pour gérer les bibliothèques partagées. Vous pouvez ajouter des packages à votre projet en les ajoutant à votre fichier `pubspec.yaml`.

**Exercice:** Créez un nouveau projet Dart, ajoutez un package externe de votre choix à votre projet en l'ajoutant à votre fichier `pubspec.yaml`, puis utilisez une fonctionnalité de ce package dans votre projet.

---

## Exercice 9: Asynchronicité - Futures

**Concept:** Dart utilise des objets `Future` pour représenter des valeurs potentielles ou des erreurs qui seront disponibles à un moment donné dans le futur.

**Exercice:** Créez une fonction qui retourne un `Future` qui se résout après un certain délai. Utilisez la fonction `then` pour gérer le résultat une fois que le `Future` est résolu.

---

## Exercice 10: Asynchronicité - async et await

**Concept:** Les mots-clés `async` et `await` sont utilisés pour écrire du code asynchrone de manière plus lisible et compréhensible.

**Exercice:** Modifiez l'exercice précédent pour utiliser `async` et `await` au lieu de `then`.