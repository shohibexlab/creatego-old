import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class PressableMix extends StatelessWidget {
  final Widget child;
  final Mix? mix;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final Variant? variant;
  final bool autofocus;
  final MouseCursor mouseCursors;
  const PressableMix(
      {Key? key,
      this.variant,
      this.mouseCursors = SystemMouseCursors.click,
      required this.child,
      this.autofocus = false,
      this.mix,
      this.onLongPressed,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: mouseCursors,
        child: Pressable(
            onLongPressed: onLongPressed,
            mix: mix,
            variant: variant,
            autofocus: autofocus,
            child: child,
            onPressed: onPressed));
  }
}
