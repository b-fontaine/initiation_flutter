# Exercices: Les Widgets stateless, Responsive/Adaptive Design et les animations implicites

Avant de commencer les exercices, assurez-vous d'avoir bien configuré votre environnement de développement pour écrire et tester des applications Flutter.

## Configuration de l'environnement de développement

1. **Installer Flutter SDK :** Pour écrire et exécuter des applications Flutter, vous devez installer le Flutter SDK. Vous pouvez le télécharger à partir du site officiel de Flutter (https://flutter.dev/docs/get-started/install).

2. **Choisir un éditeur de code :** Nous vous recommandons d'utiliser un éditeur de code comme Visual Studio Code (VS Code) ou IntelliJ IDEA qui supporte Flutter et Dart.

3. **Créer un nouveau projet Flutter :** Ouvrez une invite de commande, naviguez jusqu'au dossier où vous voulez créer votre nouveau projet, et tapez `flutter create nom_du_projet`, où `nom_du_projet` est le nom que vous voulez donner à votre projet.

4. **Exécuter l'application Flutter :** Naviguez jusqu'au dossier de votre nouveau projet et tapez `flutter run` pour lancer votre application.

Maintenant que votre environnement est prêt, passons aux exercices.

## Exercice 1: Introduction aux Stateless Widgets

**Concept :** Les widgets stateless sont des widgets qui décrivent une partie de l'interface utilisateur qui dépend de la configuration initiale et ne peut pas changer dynamiquement. Ces widgets sont immuables, c'est-à-dire que leurs valeurs sont définies une fois pour toutes et ne peuvent pas être modifiées.

**Exercice :** Créez une nouvelle application Flutter et créez un Stateless Widget qui affiche un texte "Bonjour, monde!" au centre de l'écran. 

## Exercice 2: Création d'un widget Card

**Concept :** Un widget Card dans Flutter est un conteneur de forme rectangulaire. Typiquement, les widgets Card contiennent un peu de texte et une image, et sont utilisés pour représenter des informations de manière structurée.

**Exercice :** Modifiez le widget Stateless que vous avez créé précédemment pour qu'il devienne un widget Card. Le widget Card doit avoir un padding de 10 points et doit contenir un titre, un sous-titre et une image. Vous pouvez utiliser n'importe quel texte pour le titre et le sous-titre, et vous pouvez utiliser n'importe quelle image de votre choix.

## Exercice 3: Utilisation de MediaQuery pour le Responsive Design

**Concept :** MediaQuery est un widget Flutter qui peut être utilisé pour obtenir les dimensions de l'écran actuel. Cela peut être utile pour créer des designs responsive qui s'adaptent à différentes tailles d'écran.

**Exercice :** Utilisez MediaQuery pour obtenir la largeur et la hauteur de l'écran. Ensuite, modifiez votre widget Card pour qu'il prenne toute la largeur de l'écran en mode portrait et toute la hauteur de l'écran en mode paysage, moins le padding de 10 points.

## Exercice 4: Utilisation de FloatingActionButton

**Concept :** FloatingActionButton est un widget qui représente un bouton d'action flottant. Ce type de bouton est généralement utilisé pour l'action principale dans une application.

**Exercice :** Ajoutez un FloatingActionButton à votre application. Pour l'instant, le bouton ne doit rien faire lorsqu'il est pressé.

## Exercice 5: Introduction aux animations implicites

**Concept :** Dans Flutter, une animation implicite est une animation qui est déclenchée par un changement d'état. Avec les animations implicites, vous n'avez pas besoin de contrôler l'animation vous-même ; vous pouvez simplement changer les valeurs, et Flutter s'occupe du reste.

**Exercice :** Modifiez votre FloatingActionButton pour qu'il change l'état de votre application lorsqu'il est pressé. Plus précisément, lorsque le bouton est pressé, il doit faire disparaître votre widget Card si celui-ci est actuellement visible, et il doit faire apparaître le widget Card s'il est actuellement invisible.

## Exercice 6: Utilisation de AnimatedOpacity

**Concept :** AnimatedOpacity est un widget qui change son opacité de manière animée sur une durée donnée lorsque la valeur d'opacité donnée change. C'est une façon facile d'ajouter une animation à un widget.

**Exercice :** Modifiez votre widget Card pour qu'il utilise AnimatedOpacity. L'opacité doit être de 1.0 lorsque le widget Card est visible, et de 0.0 lorsque le widget Card est invisible. Lorsque l'opacité change, l'animation doit durer 1 seconde.

Avec ces exercices, vous aurez créé une application qui affiche une carte avec un titre, un sous-titre et une image. La carte est affichée en plein écran en mode portrait et en hauteur totale en mode paysage, avec un padding de 10 points. Un bouton d'action flottant permet de faire apparaître et disparaître la carte avec une animation d'opacité.