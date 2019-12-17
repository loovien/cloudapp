import 'package:flutter/cupertino.dart';

@immutable
class AppState {
  String welcomeTxt;

  bool loading;

  AppState({
    String welcome,
    bool loading,
  }) {
    this.welcomeTxt = welcome;
    this.loading = loading;
  }

  AppState copyWith({
    String welcome,
    bool loading,
  }) {
    return AppState(
      welcome: welcome ?? this.welcomeTxt,
      loading: loading ?? this.loading,
    );
  }

  @override
  String toString() {
    return 'welcome: ' + welcomeTxt + " loading: " + loading.toString();
  }
}
