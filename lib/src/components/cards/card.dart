import 'package:flutter/material.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';
import 'package:creatego/src/components/buttons/default_button.dart';
import 'package:creatego/src/components/sized_text/sized_text.dart';
import 'package:creatego/yollet_theme.dart';

class DefaultCard extends StatelessWidget {
  String headName;
  String bodyName;
  String childName;
  String rightButtonText;
  Color? headNameColor;
  Color? bodyNameColor;
  Color? backgroundColor;
  bool? isButton;
  void Function()? onClick;
  void Function()? onRemove;

  DefaultCard({
    required this.headName,
    required this.bodyName,
    required this.childName,
    this.rightButtonText = 'remove',
    this.headNameColor,
    this.bodyNameColor,
    this.backgroundColor,
    this.isButton,
    this.onClick,
    this.onRemove,
  }) {
    isButton ??= true;
    headNameColor ??= ThemeColors.gray700;
    bodyNameColor ??= ThemeColors.coolgray500;
    backgroundColor ??= ThemeColors.white;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 410.0,
        height: 138.0,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: ThemeShadows.shadow),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedText(
              text: headName,
              textStyle: ThemeTextSemiBold.lg.apply(color: headNameColor),
              height: 24,
            ),
            SizedText(
              text: bodyName,
              textStyle: ThemeTextRegular.sm.apply(color: bodyNameColor),
              height: 40,
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (isButton!)
                  DefaultButton(
                    buttonText: childName.toString(),
                    onPressed: () {},
                    variant: ButtonVariant.SECONDARY,
                    sizeOfButton: ButtonSize.XS,
                  ),
                if (!isButton!)
                  SizedText(
                    text: childName,
                    textStyle: ThemeTextRegular.base
                        .apply(color: ThemeColors.coolgray500),
                  ),
                if (onRemove != null)
                  DefaultButton(
                    buttonText: rightButtonText,
                    onPressed: onRemove,
                    variant: ButtonVariant.GHOST,
                    sizeOfButton: ButtonSize.XS,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
