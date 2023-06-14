import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/analytics/analytics_helper.dart';

class AppBlocObserver extends BlocObserver {
  final AnalyticsHelper _analyticsHelper;

  AppBlocObserver(this._analyticsHelper);

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint(event.toString());
    _analyticsHelper.onEvent(event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint(change.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(transition.toString());

    _analyticsHelper.onTransition(transition);
  }
}
