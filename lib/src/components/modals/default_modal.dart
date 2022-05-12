
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';
import 'package:creatego/src/components/buttons/default_button.dart';
import 'package:creatego/yollet_theme.dart';

class DefaultModal extends StatelessWidget {
  VoidCallback onConfirm;
  VoidCallback onCancel;
  String? title;
  String? subtitle;
  String? cancelText;
  String? confirmText;
  HeroIcons? icon;

  DefaultModal(
      {required this.onConfirm,
      required this.onCancel,
      this.title,
      this.cancelText,
      this.confirmText,
      this.subtitle,
      this.icon}) {
    cancelText ??= "Cancel";
    confirmText ??= "Confirm";
    title ??= "Remove Store";
    subtitle ??=
        "Are you sure to remove this store? This\naction cannot be undone";
    icon ??= HeroIcons.exclamation;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388.0,
      decoration: BoxDecoration(
        boxShadow: ThemeShadows.shadowLg,
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(6.0)),
              color: ThemeColors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 19.0,
                  backgroundColor: ThemeColors.orange100,
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 20.0, maxHeight: 20.0),
                    child: HeroIcon(
                      icon!,
                      color: ThemeColors.orange500,
                    ),
                  ),
                ),
                const SizedBox(width: 11.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title!,
                        style: ThemeTextRegular.lg
                            .apply(color: ThemeColors.coolgray900)),
                    const SizedBox(height: 8.0),
                    Text(subtitle!,
                        style: ThemeTextRegular.sm
                            .apply(color: ThemeColors.coolgray500)),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: ThemeColors.coolgray50,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DefaultButton(
                  buttonText: cancelText!,
                  onPressed: onCancel,
                  sizeOfButton: ButtonSize.S,
                  variant: ButtonVariant.GHOST,
                ),
                const SizedBox(width: 16.0),
                DefaultButton(
                  buttonText: confirmText!,
                  onPressed: onConfirm,
                  sizeOfButton: ButtonSize.S,
                  variant: ButtonVariant.PRIMARY,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
