import 'package:cloudapp/actions/welcome_action.dart';
import 'package:cloudapp/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> dailyPoetry() {
  return (Store<AppState> store) async {
    final poetryTxt =
        await Future.delayed(Duration(seconds: 2), () => "hello async data");
    store.dispatch(WelcomeTxtAction(poetryTxt));
  };
}

