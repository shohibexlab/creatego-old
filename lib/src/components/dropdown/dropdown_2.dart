import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/src/components/buttons/button_variants.dart';
import 'package:creatego/src/components/sized_text/sized_text.dart';
import 'package:creatego/yollet_theme.dart';

class DefaultDropdown extends StatefulWidget {
  String? hintText;
  String? label;
  ButtonSize? size;
  List listValues;
  dynamic value;
  String? note;
  String? errorText;
  bool? readOnly;

  DefaultDropdown({
    this.label,
    this.hintText,
    required this.listValues,
    this.value,
    this.size,
    this.errorText,
    this.readOnly,
    this.note,
  }) {
    hintText ??= "Default Dropdown";
  }

  @override
  State<DefaultDropdown> createState() => _DefaultDropdownState();
}

class _DefaultDropdownState extends State<DefaultDropdown> {
  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    switch (widget.size) {
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
    return DropdownButtonHideUnderline(
      child: Column(
        children: [
          if (widget.label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SizedText(
                text: widget.label!,
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
              hint: SizedText(
                alignment: Alignment.centerLeft,
                text: widget.hintText!,
                textStyle:
                    ThemeTextRegular.base.apply(color: ThemeColors.coolgray400),
              ),
              buttonHeight: 40,
              buttonWidth: width,
              items: widget.listValues
                  .map((item) => DropdownMenuItem(
                        value: item.toString(),
                        child: SizedText(
                          alignment: Alignment.centerLeft,
                          text: item.toString(),
                          textStyle: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                  .toList(),
              value: widget.value,
              onChanged: (v) {
                setState(() {
                  widget.value = v;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
