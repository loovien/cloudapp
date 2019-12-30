import 'package:cloudapp/actions/thunk/daily_poetry.dart';
import 'package:cloudapp/actions/welcome_action.dart';
import 'package:cloudapp/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class Welcome extends StatelessWidget {
  Store store;

  Welcome(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: "cloudapp",
        theme: ThemeData.dark(),
        home: MyHomePage(
          title: "welcome cloudapp",
          store: store,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.store}) : super(key: key);
  final String title;

  final Store<AppState> store;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // StoreProvider.of<AppState>(context).dispatch(dailyPoetry());
    widget.store.dispatch(dailyPoetry());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: Center(
          child: StoreConnector(
        converter: _ViewModel.fromStore,
        builder: (BuildContext context, _ViewModel vm) {
          String slogan = vm.welcomeTxt ?? "...";
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  slogan.split('').join("\n"),
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              /*RaisedButton(
                onPressed: () {
                  print("click");
                  vm.getPoetry();
                },
                child: Text("refresh"),
              ),*/
            ],
          );
        },
      )),
    );
  }
}

class _ViewModel {
  final bool loading;
  final String welcomeTxt;

  final Function() getPoetry;

  _ViewModel(this.loading, this.welcomeTxt, this.getPoetry);

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(store.state.loading, store.state.welcomeTxt,
        () => store.dispatch(dailyPoetry()));
  }
}
