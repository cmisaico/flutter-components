import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selecterColor;

  AppTheme({
    this.selecterColor = 0,
  }) : assert(selecterColor >= 0 && selecterColor < _colorThemes.length,
            'selecterColor must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selecterColor],
      useMaterial3: true,
      // brightness: Brightness.dark
    );
  }
}
