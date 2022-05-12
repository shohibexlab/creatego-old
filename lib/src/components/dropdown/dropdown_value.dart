import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';
import 'package:creatego/src/components/sized_text/sized_text.dart';
import 'package:creatego/creatego_theme.dart';

class DefaultDropdownValue extends StatelessWidget {
  String? hintText;
  String? label;
  ButtonSize? size;
  List<Map> list;
  dynamic value;
  String? note;
  String? errorText;
  bool? readOnly;
  ValueChanged onChanged;

  DefaultDropdownValue({
    this.label,
    this.hintText = "",
    required this.onChanged,
    required this.list,
    this.value,
    this.size,
    this.errorText,
    this.readOnly,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    switch (size) {
      case ButtonSize.XS:
        break;
      case ButtonSize.S:
        width = 116;
        // TODO: Handle this case.
        break;
      case ButtonSize.M:
        // TODO: Handle this case.
        break;
      case ButtonSize.L:
        // TODO: Handle this case.
        break;
      default:
      // TODO: Handle this case.
    }
    bool isContain = false;
    for (Map map in list) {
      if (map['value'] == value) {
        isContain = true;
        break;
      }
    }

    return DropdownButtonHideUnderline(
      child: Column(
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SizedText(
                text: label!,
                alignment: Alignment.centerLeft,
                textStyle: ThemeTextSemiBold.base
                    .apply(color: ThemeColors.coolgray600),
              ),
            ),
          Container(
            decoration: BoxDecoration(
                color: ThemeColors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: ThemeShadows.shadowSm,
                border: Border.all(width: 1, color: ThemeColors.gray200)),
            child: DropdownButton2(
              style: ThemeTextMedium.sm.apply(color: ThemeColors.coolgray800),
              icon: const HeroIcon(HeroIcons.chevronDown,
                  size: 20, color: ThemeColors.coolgray600),
              focusColor: Colors.transparent,
              buttonPadding: const EdgeInsets.all(10),
              hint: hintText != null
                  ? SizedText(
                      alignment: Alignment.centerLeft,
                      text: hintText!,
                      textStyle: ThemeTextRegular.base
                          .apply(color: ThemeColors.coolgray400),
                    )
                  : Container(),
              buttonHeight: 40,
              buttonWidth: width,
              items: list
                  .map((item) => DropdownMenuItem<String>(
                        value: item["value"],
                        child: SizedText(
                          alignment: Alignment.centerLeft,
                          text: item["name"],
                          textStyle: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: isContain ? value : "",
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
