# Correction: Les Widgets stateless, Responsive/Adaptive Design et les animations implicites

## Configuration de l'environnement de développement

1. **Installation du Flutter SDK :** Téléchargez le Flutter SDK à partir du site officiel de Flutter (https://flutter.dev/docs/get-started/install). Suivez les instructions d'installation fournies.

2. **Choix d'un éditeur de code :** Vous pouvez utiliser un éditeur de code qui supporte Flutter et Dart, comme Visual Studio Code (VS Code) ou IntelliJ IDEA. Vous devrez probablement installer des extensions pour Dart et Flutter si vous utilisez VS Code.

3. **Création d'un nouveau projet Flutter :** Ouvrez une invite de commande, naviguez jusqu'au dossier où vous souhaitez créer votre nouveau projet et tapez `flutter create nom_du_projet`, où `nom_du_projet` est le nom que vous souhaitez donner à votre projet.

4. **Exécution de l'application Flutter :** Naviguez jusqu'au dossier de votre nouveau projet et tapez `flutter run` pour lancer votre application.

## Correction des exercices

### Exercice 1 : Introduction aux Stateless Widgets

Dans Flutter, un Stateless Widget est une classe qui hérite de la classe StatelessWidget. Voici comment vous pouvez créer un Stateless Widget qui affiche un texte au centre de l'écran :

```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bonjour, monde!'),
    );
  }
}
```
Pour utiliser ce widget, vous pouvez le renvoyer à partir de la méthode `build` de votre widget racine.

### Exercice 2 : Création d'un widget Card

Un widget Card dans Flutter est un conteneur avec un léger effet d'ombre. Vous pouvez utiliser le widget Card pour afficher des informations de manière structurée. Voici comment vous pouvez ajouter un widget Card à votre application :

```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              Text('Titre'),
              Text('Sous-titre'),
              Image.network('https://example.com/image.png'),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Exercice 3 : Utilisation de MediaQuery pour le Responsive Design

Pour utiliser MediaQuery, vous pouvez appeler `MediaQuery.of(context)`. Cette méthode retourne un objet MediaQueryData, qui contient les dimensions actuelles de l'écran. Vous pouvez surtout utiliser, depuis Flutter 3.10, directement les cibles du query comme `orientationOf` ou `sizeOf` :

```dart
class MonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    final size = MediaQuery.sizeOf(context);
    final isLandscape = orientation == Orientation.landscape;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Container(
            width: isLandscape ? null : size.width - 20,
            height: isLandscape ? size.height - 20 : null,
            child: Column(
              children: [
                Text('Titre'),
                Text('Sous-titre'),
                Image.network('https://example.com/image.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

### Exercice 4 : Utilisation de FloatingActionButton

Le FloatingActionButton est un bouton circulaire qui flotte au-dessus de l'interface. Il est généralement utilisé pour l'action principale d'une application. Voici comment vous pouvez ajouter un FloatingActionButton à votre application :

```dart
class MonApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MonWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
```

### Exercice 5 : Introduction aux animations implicites

Pour créer une animation implicite, vous devez utiliser un widget qui supporte les animations, comme AnimatedOpacity. Vous devez également utiliser un StatefulWidget pour pouvoir changer l'état de votre application. Voici comment vous pouvez faire que votre widget Card apparaisse et disparaisse avec une animation lorsque vous appuyez sur le FloatingActionButton :

```dart
class MonApplication extends StatefulWidget {
  @override
  _MonApplicationState createState() => _MonApplicationState();
}

class _MonApplicationState extends State<MonApplication> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    final size = MediaQuery.sizeOf(context);
    final isLandscape = orientation == Orientation.landscape;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _visible ? 1.0 : 0.0,
            child: Card(
              child: Container(
                width: isLandscape ? null : size.width - 20,
                height: isLandscape ? size.height - 20 : null,
                child: Column(
                  children: [
                    Text('Titre'),
                    Text('Sous-titre'),
                    Image.network('https://example.com/image.png'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
```
Dans le code ci-dessus, `_visible` est une variable d'état qui détermine si le widget Card est visible ou non. Lorsque vous appuyez sur le FloatingActionButton, la méthode `setState` est appelée, ce qui déclenche une nouvelle construction de l'interface et une animation de l'opacité.

### Exercice 6 : Utilisation de AnimatedOpacity

AnimatedOpacity est un widget qui change son opacité sur une période donnée chaque fois que la valeur donnée d'opacité change. Vous pouvez utiliser AnimatedOpacity pour animer la disparition et l'apparition de la carte. Le code de l'exercice précédent utilise déjà AnimatedOpacity pour créer cette animation. 

Le widget AnimatedOpacity requiert une durée et une opacité. La durée est la durée totale de l'animation et l'opacité est la valeur cible pour l'opacité. Chaque fois que l'opacité cible change, AnimatedOpacity anime automatiquement l'opacité actuelle du widget vers la nouvelle valeur sur la durée spécifiée.

Dans l'exercice précédent, l'opacité cible est déterminée par la variable d'état `_visible`. Si `_visible` est vrai, alors l'opacité cible est 1.0, ce qui signifie que le widget Card est complètement opaque. Si `_visible` est faux, alors l'opacité cible est 0.0, ce qui signifie que le widget Card est complètement transparent. Lorsque vous appuyez sur le FloatingActionButton, la variable `_visible` est inversée, ce qui change l'opacité cible et déclenche l'animation.

Félicitations, vous avez terminé les exercices de ce dossier ! Vous avez appris comment utiliser les widgets Stateless, créer des designs responsive avec MediaQuery, ajouter un FloatingActionButton à votre application, et créer des animations implicites avec AnimatedOpacity. Vous avez également créé une application qui affiche une carte avec un titre, un sous-titre et une image, qui s'adapte à la taille de l'écran et qui peut être affichée et masquée avec une animation.