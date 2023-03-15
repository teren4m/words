import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AnalyticsHelper {
  void onEvent(Object? event);

  void onTransition(Transition transition);
}
