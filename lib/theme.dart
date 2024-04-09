

// Light theme data
import 'package:flutter/material.dart';

enum ThemeMode { light, dark }


final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
);

// Dark theme data
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
);
