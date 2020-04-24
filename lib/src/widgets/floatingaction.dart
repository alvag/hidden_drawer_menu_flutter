import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/heroes_provider.dart';

class SuperFloatingAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroeProvider = Provider.of<HeroesProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () => heroeProvider.heroe = 'Hulk',
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () => heroeProvider.heroe = 'Iron Man',
        )
      ],
    );
  }
}
