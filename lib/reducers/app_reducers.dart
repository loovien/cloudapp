import 'package:cloudapp/models/app_state.dart';
import 'package:cloudapp/reducers/loading_reducer.dart';
import 'package:cloudapp/reducers/welcome_reducer.dart';

AppState appReducers(AppState state, actions) {
  return AppState(
    welcomeTxt: welcomeReducer(state.welcomeTxt, actions),
    loading: loadingReducer(state.loading, actions),
  );
}
