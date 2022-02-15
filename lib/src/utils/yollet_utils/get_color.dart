import 'package:flutter/material.dart';
import 'package:yollet_system/yollet_theme.dart';

Color? getColor(String? colorStr) {
  Color? color;
  if (colorStr != null) {
    color = ThemeColors.colors[colorStr];
  }
  return color;
}
