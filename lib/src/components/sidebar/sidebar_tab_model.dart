import 'package:auto_route/auto_route.dart';
import 'package:heroicons/heroicons.dart';

class SidebarModel {
  final String name;
  final HeroIcons? icon;
  final int? badgeCount;
  final TabsRouter tabsRouter;
  SidebarModel(
      {required this.name,
      required this.tabsRouter,
      this.badgeCount,
      this.icon});
}
