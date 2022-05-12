import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../creatego_theme.dart';

class SpacedColumn extends StatelessWidget {
  //Do not add screenUtil, Just pass double value
  double? verticalSpace;
  List<Widget> children;
  MainAxisAlignment? mainAxisAlignment;
  CrossAxisAlignment? crossAxisAlignment;

  SpacedColumn(
      {this.verticalSpace = 0.0,
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var element in children) {
      widgets.add(element);
      if (children.last == element) {
      } else {
        widgets.add(SizedBox(
          height: verticalSpace!,
        ));
      }
    }
    return Column(
      mainAxisAlignment: mainAxisAlignment!,
      crossAxisAlignment: crossAxisAlignment!,
      children: widgets,
    );
  }
}
