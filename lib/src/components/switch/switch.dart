import 'package:flutter/material.dart';
import 'package:creatego/src/components/sized_text/sized_text.dart';
import 'package:creatego/creatego_theme.dart';

class DefaultSwitch extends StatefulWidget {
  String? label;
  String? note;
  double? height;
  bool? value;
  ValueChanged<bool>? onChanged;

  DefaultSwitch(
      {this.height, this.label, this.note, this.value, this.onChanged}) {
    height ??= 88;
    value ??= true;
  }

  @override
  _DefaultSwitchState createState() => _DefaultSwitchState();
}

class _DefaultSwitchState extends State<DefaultSwitch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.label!,
                    style: ThemeTextSemiBold.base
                        .apply(color: ThemeColors.coolgray600)),
              ],
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Switch(
                    value: widget.value!,
                    onChanged: widget.onChanged ??
                        (v) => setState(() {
                              widget.value = v;
                            })),
              ),
            ],
          ),
          if (widget.note != null)
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: SizedText(
                text: widget.note!,
                textStyle:
                    ThemeTextRegular.sm.apply(color: ThemeColors.coolgray400),
              ),
            ),
        ],
      ),
    );
  }
}
