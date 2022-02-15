import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:yollet_system/yollet_theme.dart';

class DefaultButton extends StatelessWidget {
  HeroIcons? icon;
  Color? textColor;
  String buttonText;
  Color? bgColor;
  bool? isIconRightSide;
  VoidCallback? onPressed;
  ButtonSize? sizeOfButton;
  ButtonVariant? variant;
  double? buttonHeight;
  double? iconSize;
  EdgeInsetsGeometry? padding;
  List<BoxShadow>? shadow;
  Border? border;
  HeroIcons? iconButton;
  bool? isExpanded;
  bool? disabled;

  DefaultButton({
    required this.buttonText,
    this.sizeOfButton,
    this.variant,
    this.icon,
    required this.onPressed,
    this.isIconRightSide,
    this.isExpanded,
    this.disabled,
    this.iconButton,
  }) {
    sizeOfButton ??= ButtonSize.XS;
    variant ??= ButtonVariant.PRIMARY;
    isIconRightSide ??= false;
    isExpanded ??= false;
    disabled ??= false;
    buttonHeight ??= ThemeSizeStyle.defaultButtonXSHeight;
  }

  @override
  Widget build(BuildContext context) {
    _getSize();
    _getVariant();

    if (!isExpanded!) {
      return Row(
        children: [
          InkWell(
            radius: 6,
            onTap: !disabled! ? onPressed : null,
            child: HoverContainer(
                cursor: MouseCursor.defer,
                height: buttonHeight,
                decoration: BoxDecoration(
                    boxShadow: shadow ?? [],
                    color: disabled! ? bgColor!.withOpacity(0.5) : bgColor!,
                    border: border ??
                        Border.all(width: 0, color: ThemeColors.transparent),
                    borderRadius: BorderRadius.circular(6)),
                hoverDecoration: BoxDecoration(
                    boxShadow: shadow ?? [],
                    color: bgColor!
                        .withOpacity(variant == ButtonVariant.LINK ? 0.0 : 0.8),
                    border: border ??
                        Border.all(width: 0, color: ThemeColors.transparent),
                    borderRadius: BorderRadius.circular(6)),
                padding: padding!,
                child: iconButton != null
                    ? HeroIcon(iconButton!, size: 24)
                    : !isIconRightSide!
                        ? Row(
                            children: [
                              if (icon != null)
                                HeroIcon(
                                  icon!,
                                  size: iconSize,
                                  color: textColor,
                                ),
                              if (icon != null)
                                const SizedBox(
                                  width: 5,
                                ),
                              Text(buttonText.toString(),
                                  style: ThemeTextSemiBold.sm.apply(
                                      color: disabled!
                                          ? textColor!.withOpacity(0.5)
                                          : textColor)),
                            ],
                          )
                        : Row(
                            children: [
                              Text(buttonText.toString(),
                                  style: ThemeTextSemiBold.sm.apply(
                                      color: disabled!
                                          ? textColor!.withOpacity(0.5)
                                          : textColor)),
                              if (icon != null)
                                const SizedBox(
                                  width: 5,
                                ),
                              if (icon != null)
                                HeroIcon(
                                  icon!,
                                  size: iconSize,
                                  color: textColor,
                                ),
                            ],
                          )),
          ),
        ],
      );
    } else {
      return InkWell(
        radius: 6,
        onTap: !disabled! ? onPressed : null,
        child: HoverContainer(
          cursor: MouseCursor.defer,
          height: buttonHeight,
          decoration: BoxDecoration(
              boxShadow: shadow ?? [],
              color: disabled! ? bgColor!.withOpacity(0.5) : bgColor!,
              border: border ??
                  Border.all(width: 0, color: ThemeColors.transparent),
              borderRadius: BorderRadius.circular(6)),
          hoverDecoration: BoxDecoration(
              boxShadow: shadow ?? [],
              color: bgColor!
                  .withOpacity(variant == ButtonVariant.LINK ? 0.0 : 0.8),
              border: border ??
                  Border.all(width: 0, color: ThemeColors.transparent),
              borderRadius: BorderRadius.circular(6)),
          padding: padding!,
          child: iconButton != null
              ? HeroIcon(iconButton!, size: 24)
              : !isIconRightSide!
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null)
                          HeroIcon(
                            icon!,
                            size: iconSize,
                            color: disabled!
                                ? textColor!.withOpacity(0.5)
                                : textColor,
                          ),
                        if (icon != null)
                          const SizedBox(
                            width: 5,
                          ),
                        Text(buttonText.toString(),
                            style: ThemeTextSemiBold.sm.apply(
                                color: disabled!
                                    ? textColor!.withOpacity(0.5)
                                    : textColor)),
                      ],
                    )
                  : Row(
                      children: [
                        Text(buttonText.toString(),
                            style: ThemeTextSemiBold.sm.apply(
                                color: disabled!
                                    ? textColor!.withOpacity(0.5)
                                    : textColor)),
                        if (icon != null)
                          const SizedBox(
                            width: 5,
                          ),
                        if (icon != null)
                          HeroIcon(
                            icon!,
                            size: iconSize,
                            color: textColor,
                          ),
                      ],
                    ),
        ),
      );
    }
  }

  _getSize() {
    switch (sizeOfButton) {
      case ButtonSize.S:
        buttonHeight = 36;
        padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);
        iconSize = ThemeSizeStyle.defaultButtonIconSize1;
        break;
      case ButtonSize.M:
        buttonHeight = 40;
        padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0);
        iconSize = ThemeSizeStyle.defaultButtonIconSize1;
        break;
      case ButtonSize.L:
        buttonHeight = 44;
        padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0);
        iconSize = ThemeSizeStyle.defaultButtonIconSize2;
        break;
      case ButtonSize.XL:
        buttonHeight = 52;
        padding = const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0);
        iconSize = ThemeSizeStyle.defaultButtonIconSize2;
        break;
      default:
        buttonHeight = 30;
        padding = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0);
        iconSize = ThemeSizeStyle.defaultButtonIconSize1;
        break;
    }
  }

  _getVariant() {
    switch (variant) {
      case ButtonVariant.SECONDARY:
        bgColor = ThemeColors.orange100;
        textColor = ThemeColors.orange500;
        break;
      case ButtonVariant.GHOST:
        bgColor = ThemeColors.white;
        textColor = ThemeColors.gray600;
        shadow = ThemeShadows.shadowSm;
        border = Border.all(width: 1, color: ThemeColors.coolgray300);
        break;
      case ButtonVariant.LINK:
        bgColor = ThemeColors.transparent;
        textColor = ThemeColors.orange500;
        break;
      default:
        bgColor = ThemeColors.orange500;
        textColor = ThemeColors.white;
        break;
    }
  }
}
