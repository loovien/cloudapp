import 'package:cloudapp/actions/welcome_action.dart';
import 'package:redux/redux.dart';

final welcomeReducer = combineReducers<String>([
  TypedReducer<String, WelcomeTxtAction>(_welcomeTxtReducer),
]);

String _welcomeTxtReducer(String state, WelcomeTxtAction welcomeTxtAction) {
  return welcomeTxtAction.welcomeTxt;
}
