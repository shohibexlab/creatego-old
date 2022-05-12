import 'dart:math' as math;

import 'package:creatego/src/components/sidebar/sidebar_tab_child.dart';
import 'package:creatego/src/components/sidebar/sidebar_tab_model.dart';

import '../../../yollet_theme.dart';

class SidebarTabParent extends StatefulWidget {
  HeroIcons? icon;
  int? badgeCount;
  double? height;
  bool? collapsed;
  String name;
  List<SidebarModel>? collapseActions;

  SidebarTabParent({
    Key? key,
    this.icon,
    required this.name,
    this.collapsed = false,
    this.height = 40,
    this.badgeCount,
    this.collapseActions,
  }) : super(key: key);

  @override
  State<SidebarTabParent> createState() => _SidebarTabParentState();
}

class _SidebarTabParentState extends State<SidebarTabParent>
    with TickerProviderStateMixin {
  bool isCollapsed = false;

  late Animation _arrowAnimation;
  late AnimationController _arrowAnimationController;
  Color textColor = ThemeColors.coolgray500;
  Color bgColor = ThemeColors.white;
  Color textColorActive = ThemeColors.white;
  Color bgColorActive = ThemeColors.orange500;
  Color textColorInActive = ThemeColors.coolgray500;
  Color bgColorInActive = ThemeColors.white;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _arrowAnimation = Tween(
      begin: math.pi * 1.5,
      end: 0.0,
    ).animate(_arrowAnimationController);
    if (widget.collapsed == true) {
      _arrowAnimationController.isCompleted
          ? _arrowAnimationController.reverse()
          : _arrowAnimationController.forward();
      isCollapsed = true;
      bgColor = bgColorActive;
      textColor = textColorActive;
    } else {
      textColor = textColorInActive;
      bgColor = bgColorInActive;
    }
  }

  @override
  void dispose() {
    _arrowAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: widget.collapseActions != null
          ? (details) {
              if (widget.collapsed != true) {}

              _arrowAnimationController.isCompleted
                  ? _arrowAnimationController.reverse()
                  : _arrowAnimationController.forward();

              setState(() {
                isCollapsed = !isCollapsed;
                if (isCollapsed) {
                  bgColor = bgColorActive;
                  textColor = textColorActive;
                } else {
                  textColor = textColorInActive;
                  bgColor = bgColorInActive;
                }
              });
            }
          : null,
      child: Column(children: [
        _buildMain(),
        if (widget.collapseActions != null)
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            padding: const EdgeInsets.only(top: 10),
            height: isCollapsed
                ? widget.height! * widget.collapseActions!.length.toDouble() +
                    (widget.collapseActions!.length.toDouble() * 16)
                : 0,
            child: Column(
              children: _buildCollapseActions(),
            ),
          )
      ]),
    );
  }

  List<Widget> _buildCollapseActions() {
    List<Widget> list = [];
    for (var element in widget.collapseActions!) {
      list.add(SidebarTabChild(
          menuItem: element,
          elementIndex: widget.collapseActions!.indexOf(element)));
      list.add(const SizedBox(height: 10));
    }
    return list;
  }

  Widget _buildMain() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: bgColor,
      ),
      height: widget.height,
      child: Row(
        children: [
          if (widget.icon != null)
            HeroIcon(
              widget.icon!,
              size: 24,
              color: textColor,
            ),
          if (widget.icon != null)
            const SizedBox(
              width: 8,
            ),
          Expanded(
            flex: 1,
            child: Text(
              widget.name,
              style: ThemeTextRegular.base.apply(color: textColor),
            ),
          ),
          if (widget.badgeCount != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ThemeColors.coolgray100,
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                widget.badgeCount!.toString(),
                style: ThemeTextRegular.sm.apply(color: textColor),
              ),
            ),
          if (widget.collapseActions != null)
            AnimatedBuilder(
              animation: _arrowAnimationController,
              builder: (context, child) => Transform.rotate(
                angle: _arrowAnimation.value,
                child: Icon(
                  Icons.chevron_right_rounded,
                  size: 20,
                  color: textColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
