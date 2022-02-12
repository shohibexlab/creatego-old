import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:yollet_navigation/src/redux/states/yollet_nav_state.dart';
import 'package:yollet_navigation/src/redux/yollet_nav_app_state.dart';
import 'dart:developer' as developer;
import 'package:yollet_navigation/yollet_navigation.dart';

AppStateYollet appReducerYollet(AppStateYollet state, dynamic action) {
  var newState = state.copyWith(
      navigationState: _navReducer(state.navigationState, action));

  return newState;
}

///
/// Navigation Reducer
///
final _navReducer = combineReducers<NavigationStateYollet>([
  TypedReducer<NavigationStateYollet, UpdateNavigationYolletAction>(
      _updateNavigationStateYollet),
]);

NavigationStateYollet _updateNavigationStateYollet(
    NavigationStateYollet state, UpdateNavigationYolletAction action) {
  developer.log(
      '--- NAVIGATE TO ${action.name} (${action.isPage! ? 'PAGE' : 'POPUP'}) by ${action.method!.toUpperCase()} ---');
  var history = List.from(state.history);

  switch (action.method) {
    case 'push':
      if (action.name == '/') {
        history.insert(0, action);
      } else {
        history.add(action);
      }
      break;
    case 'pop':
      if (history.isNotEmpty) {
        history.removeLast();
      }
      break;
    case 'replace':
      if (history.isNotEmpty) {
        history.removeLast();
      }

      history.add(action);
      break;
  }

  if (kDebugMode) {
    developer.log('------------HISTORY-------------');

    for (var i in history.reversed) {
      developer.log('${i.isPage ? 'page' : 'popup'} - ${i.name}');
    }

    developer.log('--------------------------------');
  }

  return state.copyWith(history: history);
}
