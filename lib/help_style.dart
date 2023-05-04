import 'package:flutter/material.dart';

const _themeColor = Colors.lightGreen;
const _backgroundColor = Color.fromARGB(255, 20, 30, 52);
const _cardColor = Color.fromARGB(255, 26, 35, 74);

class HelpStyle {
  static TextStyle get titleStyle {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }

  static TextStyle get titleStyle2 {
    return const TextStyle(color: Colors.white, fontSize: 30);
  }

  static TextStyle get titleStyle3 {
    return const TextStyle(color: Colors.white, fontSize: 20);
  }

  static TextStyle get contextStyle {
    return const TextStyle(color: Colors.white, fontSize: 16);
  }

  static TextStyle get smallStyle {
    return const TextStyle(color: _themeColor, fontSize: 12);
  }

  static get backgroundColor => _backgroundColor;
  static get cardColor => _cardColor;

  static get primarycolor => _themeColor;
  static get cellMargin => 8.0;
  static get margin => 12.0;
  static get decoration => BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        color: _cardColor,
      );
}
