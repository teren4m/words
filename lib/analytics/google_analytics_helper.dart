import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/analytics/analytics_helper.dart';
import 'package:words/analytics/analytics_item.dart';
import 'package:words/analytics/constants.dart';

class GoogleAnalyticsHelper with AnalyticsHelper {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  @override
  void onEvent(Object? event) {
    Map<String, String> params;
    if (event != null && event is AnalyticsItem) {
      params = event.params;
      params[Analytics.name] = event.name;
    } else if (event != null) {
      params = {
        Analytics.name: event.runtimeType.toString(),
      };
    } else {
      params = {
        Analytics.name: 'null event',
      };
    }
    _analytics.logEvent(
      name: Analytics.eventName,
      parameters: params,
    );
  }

  @override
  void onTransition(Transition<dynamic, dynamic> transition) {
    var event = transition.event;
    var currentState = transition.currentState;
    var nextState = transition.nextState;
  }
}
