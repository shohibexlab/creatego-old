import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';
import 'package:creatego/src/components/buttons/default_button.dart';
import 'package:creatego/src/components/image_placeholder/image_placeholder.dart';
import 'package:creatego/src/components/inputs/search_field.dart';
import 'package:creatego/yollet_theme.dart';

class DefaultTopbar extends StatelessWidget {
  String image;
  VoidCallback? onSearchPress;
  VoidCallback? onBellPress;
  VoidCallback? onAvatarPress;
  VoidCallback? onArrowDownPress;

  DefaultTopbar({
    Key? key,
    required this.image,
    this.onArrowDownPress,
    this.onAvatarPress,
    this.onBellPress,
    this.onSearchPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      padding: const EdgeInsets.only(left: 20.0, right: 16.0),
      color: ThemeColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 418,
            child: SearchField(),
          ),
          Row(
            children: [
              DefaultButton(
                  buttonText: '',
                  onPressed: onBellPress,
                  variant: ButtonVariant.LINK,
                  iconButton: HeroIcons.bell),
              InkWell(
                onTap: onAvatarPress,
                child: ImagePlaceholder(
                  url: image,
                  height: 32,
                  width: 32,
                ),
              ),
              DefaultButton(
                  buttonText: '',
                  onPressed: onArrowDownPress,
                  variant: ButtonVariant.LINK,
                  iconButton: HeroIcons.chevronDown),
            ],
          ),
        ],
      ),
    );
  }
}
