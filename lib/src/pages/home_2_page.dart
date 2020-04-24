import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/heroes_provider.dart';
import 'package:hidden_drawer_menu_flutter/src/widgets/floatingaction.dart';
import 'package:hidden_drawer_menu_flutter/src/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heroeProvider = Provider.of<HeroesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(heroeProvider.heroe),
        ),
        body: Center(
          child: TextWidget(),
        ),
        floatingActionButton: SuperFloatingAction());
  }
}
