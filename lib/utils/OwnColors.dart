import 'dart:ui';

class OwnColors {
  static const String GRAY_COLOR = "#eaefef";
  static const String BLACK_COLOR = "#000000";
  Color pickerColor;

  static Color getColor(String color) {
    Color newColor = new Color(int.parse(color.substring(1, 7), radix: 16) + 0xFF000000);
    return newColor;
  }
}
