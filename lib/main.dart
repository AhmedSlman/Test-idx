import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/cubit.dart';
import 'package:myapp/home.dart';
import 'package:myapp/theme.dart';

// Enum to represent different theme modes
enum ThemeMode { light, dark }


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, theme) {
          return MaterialApp(
            title: 'Theme Switcher',
            theme: theme == ThemeMode.light ? lightTheme : darkTheme,
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}