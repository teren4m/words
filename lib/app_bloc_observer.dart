import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/analytics/analytics_item.dart';
import 'package:words/analytics/constants.dart';

class AppBlocObserver extends BlocObserver {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint(event.toString());

    Map<String, String> params;
    if (event != null && event is AnalyticsItem) {
      params = event.params;
      params[Analytics.name] = event.name;
    } else if(event != null) {
      params = {
        Analytics.name: event.runtimeType.toString(),
      };
    } else {
      params = {};
    }
    analytics.logEvent(
      name: Analytics.eventName,
      parameters: params,
    );
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

    var event = transition.event;
    var currentState = transition.currentState;
    var nextState = transition.nextState;
  }
}
