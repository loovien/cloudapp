import 'package:flutter/cupertino.dart';

@immutable
class AppState {
  String welcomeTxt;

  bool loading;

  AppState({
    String welcomeTxt,
    bool loading,
  }) {
    this.welcomeTxt = welcomeTxt;
    this.loading = loading;
  }

  AppState copyWith({
    String welcome,
    bool loading,
  }) {
    return AppState(
      welcomeTxt: welcome ?? this.welcomeTxt,
      loading: loading ?? this.loading,
    );
  }

  factory AppState.loading() {
    return AppState(loading: true);
  }

  @override
  String toString() {
    return 'welcome: ' + welcomeTxt + " loading: " + loading.toString();
  }
}
