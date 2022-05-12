import '../../../../creatego_theme.dart';

class YSCheckbox extends StatelessWidget {
  bool value;
  void Function(bool?)? onChanged;
  YSCheckbox({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        checkColor: Colors.white,
        value: value,
        onChanged: onChanged,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        fillColor: MaterialStateProperty.resolveWith((states) {
          return ThemeColors.orange500;
        }),
        side: const BorderSide(width: 1, color: ThemeColors.coolgray300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ));
  }
}
