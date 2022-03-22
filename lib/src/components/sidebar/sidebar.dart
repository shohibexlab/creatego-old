import 'dart:html' as html;
import 'package:yollet_system/src/components/sidebar/sidebar_tab_parent.dart';
import 'package:yollet_system/yollet_theme.dart';

class SideBarVertical extends StatelessWidget {
  final String? headline;
  final String? subtitle;
  final String? topLogo;
  final List<SidebarTabParent> children;
  final List<SidebarTabParent>? secondaryChildren;
  final String? bottomText;

  SideBarVertical({
    this.headline = 'Dummy Name',
    this.subtitle = 'dummy@mail.com',
    this.topLogo,
    required this.children,
    this.secondaryChildren,
    this.bottomText,
  });

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: ThemeColors.white,
        boxShadow: ThemeShadows.shadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoBanner(),
              Container(
                padding: const EdgeInsets.only(top: 16, bottom: 20),
                child: InfoBanner(
                  mainText: headline,
                  secondaryText: subtitle,
                  lowerTextColor: ThemeColors.coolgray500,
                ),
              ),
              SizedBox(
                height: _height - 427,
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Column(
                      children: children,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Divider(
                  height: 1,
                  color: ThemeColors.coolgray300,
                ),
              ),
              if (secondaryChildren != null && secondaryChildren!.isNotEmpty)
                SizedBox(
                  height: 150,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      child: Column(
                        children: secondaryChildren as List<Widget>,
                      ),
                    ),
                  ),
                ),
              if (bottomText != null)
                Container(
                  height: 72,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    bottomText!,
                    style: ThemeTextRegular.xxs
                        .apply(color: ThemeColors.warmgray500),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
