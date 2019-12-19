import 'package:cloudapp/containers/welcome.dart';
import 'package:cloudapp/models/app_state.dart';
import 'package:cloudapp/reducers/app_reducers.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() {
  Store<AppState> store = Store<AppState>(
    appReducers,
    initialState: AppState.loading(),
    middleware: [
      thunkMiddleware
    ]
  );
  runApp(Welcome(store));
}
