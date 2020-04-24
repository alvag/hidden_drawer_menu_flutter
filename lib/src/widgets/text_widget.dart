import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/heroes_provider.dart';
import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final heroesProvider = Provider.of<HeroesProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<HeroesProvider>(
          builder: (context, heroesProvider, _) => Text(heroesProvider.heroe),
        ),
      ],
    );
  }
}
