import 'package:yollet_system/src/navigation/yollet_nav_action.dart';

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
