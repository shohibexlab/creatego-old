import 'package:yollet_system/src/components/sidebar/sidebar_tab_model.dart';
import 'package:yollet_system/yollet_theme.dart';

class SidebarTabChild extends StatefulWidget {
  final SidebarModel? menuItem;
  final int elementIndex;

  SidebarTabChild({
    required this.menuItem,
    required this.elementIndex,
  });

  @override
  State<SidebarTabChild> createState() => _SidebarTabChildState();
}

class _SidebarTabChildState extends State<SidebarTabChild> {
  void get navigate {
    widget.menuItem?.tabsRouter.setActiveIndex(widget.elementIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = ThemeColors.coolgray500;

    Color bgColor =
        widget.elementIndex == widget.menuItem?.tabsRouter.activeIndex
            ? ThemeColors.blue100
            : ThemeColors.white;
    return InkWell(
      onTap: () => navigate,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: bgColor,
        ),
        height: 36,
        child: Row(
          children: [
            if (widget.menuItem?.icon != null)
              HeroIcon(
                widget.menuItem!.icon!,
                size: 24,
                color: textColor,
              ),
            if (widget.menuItem?.icon != null)
              const SizedBox(
                width: 8,
              ),
            Expanded(
              flex: 1,
              child: Text(
                widget.menuItem!.name,
                style: ThemeTextRegular.base.apply(color: textColor),
              ),
            ),
            if (widget.menuItem?.badgeCount != null)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColors.coolgray100,
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  widget.menuItem!.badgeCount!.toString(),
                  style: ThemeTextRegular.sm.apply(color: textColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
