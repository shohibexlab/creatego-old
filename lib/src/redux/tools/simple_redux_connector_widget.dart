import 'package:yollet_system/src/navigation/yollet_nav_action.dart';
import 'package:yollet_system/src/redux/tools/app_state.dart';
import 'package:yollet_system/src/redux/tools/simple_redux_provider_widget.dart';

class SimpleReduxConnectorWrapper extends StatelessWidget {
  Widget child;
  SimpleReduxConnectorWrapper({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleReduxProviderWrapper(
        child: StoreConnector<AppStateSimple, AppStateSimple>(
            converter: (store) => store.state,
            builder: (_, state) {
              return child;
            }));
  }
}
