import 'package:creatego/src/utils/get_image_widget.dart';
import "dart:html" as html;
import 'package:creatego/creatego_theme.dart';

class LogoBanner extends StatelessWidget {
  double height;
  String image;
  String? goToLink;

  static dynamic get name => LogoBanner;
  LogoBanner(
      {this.height = 64,
      this.goToLink,
      this.image = 'http://placehold.jp/150x150.png'});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToLink != null ? _goTo : null,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ThemeColors.white,
          boxShadow: ThemeShadows.shadow,
        ),
        child: getImage(image, fit: BoxFit.contain),
      ),
    );
  }

  _goTo() {
    const String _blank = "_blank";
    const String _https = "https://";
    if (goToLink!.startsWith(_https)) {
      html.window.open(goToLink!, _blank);
    } else {
      html.window.open(_https + goToLink!, _blank);
    }
  }
}
