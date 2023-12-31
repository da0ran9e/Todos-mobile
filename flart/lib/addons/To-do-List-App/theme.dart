import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 12, 44, 71),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 152, 152, 151),
    size: 25,
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.black,
  ),
);
ThemeData darkTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 12, 44, 71),
  iconTheme: const IconThemeData(
    color: Color.fromARGB(255, 152, 152, 151),
    size: 25,
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 40, 40, 40), elevation: 0),
  tabBarTheme: const TabBarTheme(
    labelColor: Color.fromARGB(255, 255, 255, 255),
  ),
);
