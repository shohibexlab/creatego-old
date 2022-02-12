import 'package:yollet_navigation/src/redux/yollet_nav_app_state.dart';

///----------------- Navigation Action Yollet -----------------

void NAVIGATETO(
    {String? to,
    bool replace = false,
    Map<String, dynamic>? arguments,
    bool reload = false,
    bool isStayPopup = false,
    String? pushAndRemoveUntil,
    String? removeUntilPage}) {
  appStoreYolletNav.dispatch(NavigateToAction(
      to: to,
      replace: replace,
      arguments: arguments,
      isStayPopup: isStayPopup,
      pushAndRemoveUntil: pushAndRemoveUntil,
      reload: reload,
      removeUntilPage: removeUntilPage));
}

class UpdateNavigationYolletAction {
  final String? name;
  final bool? isPage;
  final String? method;

  UpdateNavigationYolletAction({this.name, this.isPage, this.method});
}

class NavigateToAction {
  final String? to;
  final bool replace;
  final Map<String, dynamic>? arguments;
  String? removeUntilPage;
  String? pushAndRemoveUntil;

  final bool reload;
  final bool isStayPopup;

  NavigateToAction(
      {this.to,
      this.replace = false,
      this.arguments,
      this.reload = false,
      this.isStayPopup = false,
      this.pushAndRemoveUntil,
      this.removeUntilPage});
}

class DismissPopupAction {
  final bool all;
  final dynamic result;

  DismissPopupAction({this.all = false, this.result});
}
