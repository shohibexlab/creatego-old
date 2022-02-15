import 'package:flutter/material.dart';
import 'package:yollet_system/yollet_theme.dart';
class RegularPopup extends StatelessWidget {
  Widget child;
  double? height;
  RegularPopup(this.child, {this.height});

  Future<bool> _onWillPop() async {
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Stack(
        children: [
          Container(
            width: 420,
            height: height ?? MediaQuery.of(context).size.height - 300,
            decoration: BoxDecoration(
              color: ThemeColors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(child: child),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.close,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
