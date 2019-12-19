import 'package:cloudapp/actions/loading_action.dart';
import 'package:redux/redux.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadingAction>(_loadingReducer),
]);

bool _loadingReducer(bool state, actions) {
  return false;
}
