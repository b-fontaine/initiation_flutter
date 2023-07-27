**Code final pour l'étape 10**

Voici comment le code final devrait ressembler une fois que vous avez terminé l'étape 10:

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(FruitVoterApp());
}

class FruitVoterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => MaterialPage<void>(
            key: state.pageKey,
            child: HomePage(),
          ),
        ),
        GoRoute(
          path: '/fruit/:fruit',
          pageBuilder: (context, state) {
            final fruit = state.params['fruit'];
            return MaterialPage<void>(
              key: state.pageKey,
              child: FruitDetailsPage(fruit: fruit!),
            );
          },
        ),
      ],
    );

    return MaterialApp.router(
      routerDelegate: router.delegate,
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, int> votes = {
    'Apple': 0,
    'Banana': 0,
    'Cherry': 0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit Voter'),
      ),
      body: ListView(
        children: votes.keys.map((fruit) {
          return ListTile(
            title: Text(fruit),
            trailing: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(child: child, opacity: animation);
              },
              child: Text(
                votes[fruit].toString(),
                key: ValueKey<int>(votes[fruit]),
              ),
            ),
            onTap: () {
              GoRouter.of(context).go('/fruit/$fruit');
            },
          );
        }).toList(),
      ),
    );
  }
}

class FruitDetailsPage extends StatefulWidget {
  final String fruit;

  FruitDetailsPage({required this.fruit});

  @override
  _FruitDetailsPageState createState() => _FruitDetailsPageState();
}

class _FruitDetailsPageState extends State<FruitDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fruit),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Retour'),
          onPressed: () {
            GoRouter.of(context).goBack();
          },
        ),
      ),
    );
  }
}

```
Cette application simple montre comment gérer l'état local, animer les changements d'état, et naviguer entre les pages dans une application Flutter.

Pour utiliser la navigation à routes nommées, il ne faut pas oublier d'installer `go_router`:

**En ligne de commande**

``` shell
$ flutter pub install go_router
```

**Directement sur le `pubspec.yaml`**

``` yaml 
dependencies:
  flutter:
    sdk: flutter
  go_router: 

```