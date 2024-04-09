// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';

abstract class ThemeState {}

class ThemeLight extends ThemeState {
  @override
  ThemeData get themeData => ThemeData.light();
}

class ThemeDark extends ThemeState {
  @override
  ThemeData get themeData => ThemeData.dark();
}
