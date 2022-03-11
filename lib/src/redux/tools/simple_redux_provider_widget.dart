import 'package:yollet_system/src/navigation/yollet_nav_action.dart';
import 'package:yollet_system/src/redux/tools/app_state.dart';

class SimpleReduxProviderWrapper extends StatelessWidget {
  Widget child;
  SimpleReduxProviderWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(store: appStore, child: child);
  }
}
