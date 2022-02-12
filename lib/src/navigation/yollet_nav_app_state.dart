import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:yollet_navigation/src/navigation/middleware/yollet_navigation_middleware.dart';
import 'package:yollet_navigation/src/navigation/states/yollet_nav_state.dart';
import 'package:yollet_navigation/src/navigation/yollet_nav_reducer.dart';

NavigationStateYollet get GETNAVIGATIONSTATEYOLLET =>
    StoreProvider.of<AppStateYollet>(Get.context!).state.navigationState;

final appStoreYolletNav = Store<AppStateYollet>(
  appReducerYollet,
  initialState: AppStateYollet.initial(),
  middleware: [
    NavigationMiddlewareYollet(),
  ],
);

@immutable
class AppStateYollet {
  final NavigationStateYollet navigationState;

  AppStateYollet({
    required this.navigationState,
  });

  factory AppStateYollet.initial() {
    return AppStateYollet(
      navigationState: NavigationStateYollet.initial(),
    );
  }

  AppStateYollet copyWith({NavigationStateYollet? navigationState}) {
    return AppStateYollet(
      navigationState: navigationState ?? this.navigationState,
    );
  }
}
