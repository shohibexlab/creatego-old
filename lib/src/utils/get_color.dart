import 'package:creatego/creatego_theme.dart';

Color? getColor(String? colorStr) {
  Color? color;
  if (colorStr != null) {
    color = ThemeColors.colors[colorStr];
  }
  return color;
}
