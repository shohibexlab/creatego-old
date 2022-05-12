import 'package:flutter/material.dart';
import 'package:creatego/yollet_theme.dart';

class PopupContent extends StatefulWidget {
  final Widget? content;

  PopupContent({
    Key? key,
    this.content,
  }) : super(key: key);

  @override
  _PopupContentState createState() => _PopupContentState();
}

class _PopupContentState extends State<PopupContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.content,
    );
  }
}
