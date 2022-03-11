import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:redux/redux.dart';
import 'package:yollet_system/src/redux/middlewares/basket_middleware.dart';
import 'package:yollet_system/src/redux/tools/reducer.dart';

import '../states/basket_state.dart';

AppState get GETSTATE => StoreProvider.of<AppState>(Get.context!).state;

final appStore = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [
    BasketMiddleware(),
  ],
);

@immutable
class AppState {
  final BasketState basketState;

  AppState({
    required this.basketState,
  });

  factory AppState.initial() {
    return AppState(
      basketState: BasketState.initial(),
    );
  }

  AppState copyWith({
    BasketState? basketState,
  }) {
    return AppState(
      basketState: basketState ?? this.basketState,
    );
  }
}
