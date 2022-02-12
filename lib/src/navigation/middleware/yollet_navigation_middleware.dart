import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:yollet_navigation/src/navigation/states/yollet_nav_state.dart';
import 'package:yollet_navigation/src/navigation/yollet_nav_action.dart';
import 'package:yollet_navigation/src/navigation/yollet_nav_app_state.dart';

/* GetX Navigation Information => https://mukhtharcm.com/getx-navigation-basics/ */

class NavigationMiddlewareYollet extends MiddlewareClass<AppStateYollet> {
  @override
  call(Store<AppStateYollet> store, action, next) {
    if (action is NavigateToAction) {
      return _navigate(store, action);
    } else if (action is DismissPopupAction) {
      return _dismissPopup(store.state.navigationState, action);
    } else {
      return next(action);
    }
  }

  // 의도적으로 next() 하지 않음
  void _navigate(Store<AppStateYollet> store, NavigateToAction action) {
    var history = store.state.navigationState.history;
    var pages = history.where((v) => v.isPage).map((v) => v.name).toList();

    if (action.to == 'up') {
      String? parentPage =
          pages.length > 1 ? pages[pages.length - 2] : 'AppRoutes.RouteToHOME';
      if (parentPage == null || parentPage.isEmpty) {
        _dismissAllPopups(store.state.navigationState);
        Get.back();
      } else {
        Get.until(ModalRoute.withName(parentPage));
      }
      if (parentPage == 'AppRoutes.RouteToHOME') {
        Get.appUpdate();
      }
    } else if (action.to != null && action.to!.startsWith('#')) {
      int? index = int.tryParse(action.to!.substring(1));

      if (index != null && index < history.length) {
        for (int i = 0; i < history.length - index - 1; i++) {
          Get.back();
        }
      }
    } else if (action.to != null && pages.contains(action.to)) {
      Get.until(ModalRoute.withName(action.to!));
      if (action.to == '') {
        Get.appUpdate();
      }

      if (action.reload) {
        Get.appUpdate();
      }
    } else if (action.to != null) {
      _navigateTo(store, action);
    }
  }

  void _navigateTo(Store<AppStateYollet> store, NavigateToAction action) {
    _navigateTo2(store, action);
  }

  Future<void> _navigateTo2(
      Store<AppStateYollet> store, NavigateToAction action) async {
    var navState = store.state.navigationState;
    if (!action.isStayPopup) {
      _dismissAllPopups(navState);
    }
    _pushOrReplaceNamed(action.to, action, store);
  }

  void _pushOrReplaceNamed(
      String? to, NavigateToAction action, Store<AppStateYollet> store) {
    if (action.pushAndRemoveUntil != null) {
      _pushAndRemoveUntil(action);
      return;
    }
    if (action.removeUntilPage != null) {
      _removeUntil(action);
      return;
    }
    if (action.replace) {
      _pushReplacement(action);
      return;
    } else {
      _push(action);
      return;
    }
  }

  _push(NavigateToAction action) async {
    Get.toNamed(action.to!);
  }

  _pushReplacement(NavigateToAction action) async {
    Get.offNamed(action.to!);
  }

  _pushAndRemoveUntil(NavigateToAction action) async {
    Get.offNamedUntil(action.to!, (route) => false);
  }

  _removeUntil(NavigateToAction action) async {
    Get.until((route) => route.settings.name == action.removeUntilPage);
    _push(action);
  }

  void _dismissPopup(NavigationStateYollet state, DismissPopupAction action) {
    if (action.all) {
      _dismissAllPopups(state);
    } else {
      if (state.history.isNotEmpty && !state.history.last.isPage) {
        Get.back();
      }
    }
  }

  // 현재 페이지 위에 떠 있는 팝업 닫기
  void _dismissAllPopups(NavigationStateYollet state) {
    if (state.history.isNotEmpty && !state.history.last.isPage) {
      var popupCount = state.history.length -
          state.history.lastIndexWhere((i) => i.isPage) -
          1;

      for (var i = 0; i < popupCount; i++) {
        Get.back();
      }
    }
  }
}
