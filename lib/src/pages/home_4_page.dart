import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class Home4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeChangeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Center(
        child: ListButtons(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _themeProvider.theme = ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.lime,
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: Colors.lime),
          );
        },
      ),
    );
  }
}

class ListButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeChangeProvider>(context);

    return Column(
      children: <Widget>[
        FlatButton(
          child: Text('Light'),
          onPressed: () => _themeProvider.theme = ThemeData.light(),
        ),
        FlatButton(
          child: Text('Dark'),
          onPressed: () => _themeProvider.theme = ThemeData.dark(),
        ),
      ],
    );
  }
}
