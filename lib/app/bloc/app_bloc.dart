import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/app/bloc/app_bloc_event.dart';
import 'package:words/app/bloc/app_bloc_state.dart';

class AppBloc extends Bloc<AppBlocEvent, AppBlocState> {
  AppBloc() : super(AppBlocState());
}
