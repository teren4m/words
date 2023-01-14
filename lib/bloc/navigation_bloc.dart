import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationEvent{

}

class NavigationState{

}
class NavigationBloc extends Bloc<NavigationEvent, NavigationState>{
  NavigationBloc() : super(NavigationState()) {
    // on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    // on<CounterDecrementPressed>((event, emit) => emit(state - 1));
  }

}