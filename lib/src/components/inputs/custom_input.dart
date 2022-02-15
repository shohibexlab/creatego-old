import 'package:flutter/material.dart';
import 'package:yollet_system/yollet_theme.dart';

class DefaultInput extends StatefulWidget {
  String? labelText;
  String? hintText;
  bool? isPassword;
  bool? isTransparent;
  TextInputType? keyboardType;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;

  DefaultInput(
      {this.labelText,
      this.hintText,
      this.isPassword,
      this.isTransparent,
      this.validator,
      this.keyboardType,
      this.controller}) {
    keyboardType ??= TextInputType.text;
    isPassword ??= false;
    isTransparent ??= false;
    hintText ??= "Default Input";
  }
  @override
  DefaultInputState createState() => DefaultInputState();
}

class DefaultInputState extends State<DefaultInput> {
  TextEditingController inputController = TextEditingController();

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  void clear(controller) async {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        controller.clear();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller ?? inputController,
      obscureText: widget.isPassword!,
      style: ThemeTextRegular.base.apply(color: ThemeColors.coolgray800),
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          hintText: widget.hintText,
          hintStyle:
              ThemeTextRegular.base.apply(color: ThemeColors.coolgray400),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(
                  color: widget.isTransparent!
                      ? ThemeColors.transparent
                      : ThemeColors.gray200)),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
                color: widget.isTransparent!
                    ? ThemeColors.transparent
                    : ThemeColors.gray200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
                color: widget.isTransparent!
                    ? ThemeColors.transparent
                    : ThemeColors.orange400),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
                color: widget.isTransparent!
                    ? ThemeColors.transparent
                    : ThemeColors.red400),
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.cancel,
              color: ThemeColors.gray300,
            ),
            onPressed: () => clear(widget.controller ?? inputController),
          )),
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      // onSaved: (String val) {
      //   widget.value = val;
      // }
    );
  }
}
