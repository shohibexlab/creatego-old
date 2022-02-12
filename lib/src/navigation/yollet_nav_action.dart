import 'package:flutter/material.dart';
import 'package:yollet_system/src/navigation/yollet_nav_app_state.dart';
export 'package:yollet_system/src/navigation/yollet_nav_app_state.dart';
export 'package:yollet_system/src/navigation/yollet_nav_observer.dart';
export 'package:yollet_system/src/navigation/yollet_nav_reducer.dart';
export 'package:yollet_system/src/navigation/states/yollet_nav_state.dart';
export 'package:yollet_system/src/navigation/middleware/yollet_navigation_middleware.dart';
export 'package:redux/redux.dart';
export 'package:flutter_redux/flutter_redux.dart';
export 'package:get/get.dart';
export 'package:flutter/material.dart';

///----------------- Navigation Action Yollet -----------------

void NAVIGATETO(
    {Widget? to,
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
  final Widget? to;
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
