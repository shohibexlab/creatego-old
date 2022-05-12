
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/creatego_theme.dart';

class Breadcrumb extends StatelessWidget {
  List routes;
  Breadcrumb({required this.routes});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildRoutes(context),
    );
  }

  List<Widget> _buildRoutes(BuildContext context) {
    List<Widget> list = [];

    for (var element in routes) {
      list.add(Text(element.toString(),
          style: ThemeTextRegular.xs.apply(
            color: ThemeColors.coolgray500,
          )));
      list.add(const SizedBox(
        width: 8,
      ));
      if (routes.last != element) {
        list.add(const HeroIcon(
          HeroIcons.chevronRight,
          color: ThemeColors.coolgray400,
          size: 20,
          solid: true,
        ));
        list.add(const SizedBox(
          width: 8,
        ));
      }
    }
    return list;
  }
}
