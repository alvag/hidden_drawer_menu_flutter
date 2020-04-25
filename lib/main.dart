import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu_flutter/src/pages/home_3_page.dart';
import 'package:hidden_drawer_menu_flutter/src/pages/home_4_page.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/heroes_provider.dart';
import 'package:hidden_drawer_menu_flutter/src/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'package:hidden_drawer_menu_flutter/src/pages/home_2_page.dart';
import 'package:hidden_drawer_menu_flutter/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChangeProvider(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeChangeProvider>(context);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: HomePage(),
        // home: Home2Page(),
        home: Home4Page(),
        theme: _themeProvider.theme,
      ),
    );
  }
}
