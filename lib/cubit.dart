// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:myapp/theme_state.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ThemeCubit extends Cubit<ThemeState> {
//   ThemeCubit() : super(ThemeLight()) {
//     loadTheme();
//   }

//   String _themeKey = "theme";

//   void loadTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isDarkMode = prefs.getBool(_themeKey) ?? false;
//     if (isDarkMode) {
//       emit(ThemeDark());
//     } else {
//       emit(ThemeLight());
//     }
//   }

//   void toggleTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isDarkMode = state is ThemeDark;
//     await prefs.setBool(_themeKey, !isDarkMode);
//     emit(isDarkMode ? ThemeDark() : ThemeLight());
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light) {
    _loadTheme();
  }

  void toggleTheme() {
    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
    _saveTheme(state);
  }

  Future<void> _saveTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', themeMode == ThemeMode.dark);
  }
  
  Future<void> _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkMode = prefs.getBool('isDarkMode') ?? false;
    if (isDarkMode) {
      emit(ThemeMode.dark);
    }
  }

}
