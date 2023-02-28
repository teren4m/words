import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/app/bloc/app_bloc_event.dart';
import 'package:words/app/bloc/app_bloc_state.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_type.dart';

class AppBloc extends Bloc<AppBlocEvent, AppBlocState> {
  AppBloc()
      : super(const AppBlocState(
          type: FloatingButtonType.none,
        )) {
    on<AppBlocEvent>((event, emit) {
      emit.call(AppBlocState(
        type: event.type,
      ));
    });
  }

  void updateType(FloatingButtonType type) {
    add(AppBlocEvent(type: type));
  }

  void typeNone() {
    add(const AppBlocEvent(type: FloatingButtonType.none));
  }

  void typeAdd() {
    add(const AppBlocEvent(type: FloatingButtonType.add));
  }

  void typeDone() {
    add(const AppBlocEvent(type: FloatingButtonType.done));
  }
}
