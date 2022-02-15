
import 'package:flutter/material.dart';
import 'package:yollet_system/src/utils/yollet_utils/get_image_widget.dart';

class ImagePlaceholder extends StatefulWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit fit;

  ImagePlaceholder({
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  @override
  _ImagePlaceholderState createState() => _ImagePlaceholderState();
}

class _ImagePlaceholderState extends State<ImagePlaceholder> {
  @override
  Widget build(BuildContext context) {
    return getImage(widget.url,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        isCircular: true);
  }
}
