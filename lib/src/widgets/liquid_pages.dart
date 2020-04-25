import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu_flutter/src/pages/first_page.dart';
import 'package:hidden_drawer_menu_flutter/src/pages/second_page.dart';

final styles = TextStyle(fontSize: 20.0, color: Colors.white);

final liquidPages = [
  Container(
    color: Colors.pinkAccent,
    child: Center(
      child: Text('Slide 1', style: styles),
    ),
  ),
  Container(
    color: Colors.deepPurpleAccent,
    child: Center(
      child: Text('Slide 2', style: styles),
    ),
  ),
  Container(
    color: Colors.greenAccent,
    child: Center(
      child: Text('Slide 3', style: styles),
    ),
  ),
  Container(
    color: Colors.blueAccent,
    child: Center(
      child: Text('Slide 4', style: styles),
    ),
  ),
  Container(
    color: Colors.orangeAccent,
    child: Center(
      child: Text('Slide 5', style: styles),
    ),
  )
];

final liquidPages2 = [
  Container(
    child: FirstPage(),
  ),
  Container(
    child: SecondPage(),
  ),
];
