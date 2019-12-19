import 'package:cloudapp/actions/welcome_action.dart';
import 'package:cloudapp/models/app_state.dart';
import 'package:cloudapp/models/daily_poetry.dart';
import 'package:cloudapp/services/dataservice.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> dailyPoetry() {
  return (Store<AppState> store) async {
    DailyPoetry dailyPoetry = await DataService().getDailyPoetry();
    store.dispatch(WelcomeTxtAction(dailyPoetry.content));
  };
}

