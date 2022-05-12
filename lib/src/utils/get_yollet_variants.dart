import 'package:flutter/material.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';

ButtonSize? getYolletButtonSize(String? sizeStr) {
  switch (sizeStr) {
    case "xs":
      return ButtonSize.XS;
    case "s":
      return ButtonSize.S;
    case "m":
      return ButtonSize.M;
    case "l":
      return ButtonSize.L;
    case "xl":
      return ButtonSize.XL;
  }
}

ButtonVariant? getYolletButtonVariant(String? variantStr) {
  switch (variantStr) {
    case "primary":
      return ButtonVariant.PRIMARY;
    case "secondary":
      return ButtonVariant.SECONDARY;
    case "link":
      return ButtonVariant.LINK;
    case "ghost":
      return ButtonVariant.GHOST;
  }
}

TextInputType? getKeyboardType(String? kTypeStr) {
  switch (kTypeStr) {
    case "number":
      return TextInputType.number;
    case "text":
      return TextInputType.text;
    case "email":
      return TextInputType.emailAddress;
  }
}

AlignmentGeometry? getAlignment(String? kAlignmentStr) {
  switch (kAlignmentStr) {
    case "center":
      return Alignment.center;
    case "centerRight":
      return Alignment.centerRight;
    case "centerLeft":
      return Alignment.centerLeft;
    case "bottomCenter":
      return Alignment.bottomCenter;
    case "bottomRight":
      return Alignment.bottomRight;
    case "bottomLeft":
      return Alignment.bottomLeft;
    case "topCenter":
      return Alignment.topCenter;
    case "topRight":
      return Alignment.topRight;
    case "topLeft":
      return Alignment.topLeft;
  }
}

TextAlign? getTextAlign(String? kAlignmentStr) {
  switch (kAlignmentStr) {
    case "center":
      return TextAlign.center;
    case "left":
      return TextAlign.left;
    case "right":
      return TextAlign.right;
  }
}
