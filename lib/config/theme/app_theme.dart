import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  
  final int selectedColor;
  final bool darkMode;

  AppTheme({
      this.darkMode = false, 
      this.selectedColor = 0,
    }): assert (selectedColor >= 0, 'Selected color mos be grather then 0' ),
        assert (selectedColor < colorList.length, 'Selected color mos be less or equal than ${colorList.length - 1}' );

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: darkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      )
    );
}