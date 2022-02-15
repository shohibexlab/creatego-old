import 'package:flutter/material.dart';

Widget getImage(String image,
    {BoxFit fit = BoxFit.cover,
    double? width,
    double? height,
    bool isCircular = false}) {
  const String asset = 'assets';
  if (image.startsWith(asset)) {
    return ClipRRect(
        borderRadius:
            isCircular ? BorderRadius.circular(999 / 2) : BorderRadius.zero,
        child: Image.asset(image, width: width, height: height, fit: fit));
  } else {
    return ClipRRect(
        borderRadius:
            isCircular ? BorderRadius.circular(999 / 2) : BorderRadius.zero,
        child: Image.network(image, width: width, height: height, fit: fit));
  }
}
