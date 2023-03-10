import 'package:flutter/material.dart';

ThemeData get defaultTheme => ThemeData(

  brightness: Brightness.light,
  primaryColor: Colors.blue,
  accentColor: Colors.lightBlueAccent,
  canvasColor: Colors.lightGreen.shade100,
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
    iconTheme:  IconThemeData(
      color: Colors.white,
    ),
  ),
);
ThemeData get pinkTheme => ThemeData(

  brightness: Brightness.light,
  primaryColor: Colors.pink,
  accentColor: Colors.pinkAccent,
);

ThemeData get darkTheme => ThemeData(

  brightness: Brightness.dark,
  primaryColor: Colors.orange,
  accentColor: Colors.yellowAccent,
);
