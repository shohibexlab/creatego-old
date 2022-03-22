import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

typedef _NocodeTabsRouter = Widget Function(
    TabsRouter tabsRouter, Widget child);

class NoCodeTabsLayout extends StatelessWidget {
  final List<PageRouteInfo<dynamic>> routes;
  const NoCodeTabsLayout(
      {Key? key, required this.routes, required this.nocodeTabsRouter})
      : super(key: key);

  final _NocodeTabsRouter nocodeTabsRouter;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: routes,
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);
          return nocodeTabsRouter(tabsRouter, child);
        });
  }
}
