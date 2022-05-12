import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:creatego/src/components/tabs/tab.dart';
import 'package:creatego/creatego_theme.dart';

class Navigationbar extends StatelessWidget {
  int tabsLength;
  int active;
  List<String> names;
  List<HeroIcons> icons;
  String? id;

  Navigationbar({
    Key? key,
    required this.tabsLength,
    required this.active,
    required this.names,
    required this.icons,
    this.id,
  }) : super(key: key);

  List<DefaultTab> tabList = [];

  @override
  Widget build(BuildContext context) {
    int activeElement = active;
    return Container(
      decoration: const BoxDecoration(
        color: ThemeColors.white,
      ),
      height: 52.0,
      child: Row(
        children: _builtWidgetsDefaultTab(activeElement),
      ),
    );
  }

  List<Widget> _builtWidgetsDefaultTab(int activeElement) {
    List<Widget> list = [];

    for (int index = 0; index < tabsLength; index++) {
      if (activeElement == index) {
        list.add(DefaultTab(
          text: names[index],
          icon: icons[index],
          isActive: true,
          onTap: () {},
        ));
      } else {
        list.add(DefaultTab(
          text: names[index],
          icon: icons[index],
          onTap: () {
            switch (index) {
              case 0:
                break;
              case 1:
                break;
              case 2:
                break;
              default:
            }
          },
        ));
      }
    }
    return list;
  }
}
