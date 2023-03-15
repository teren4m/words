import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/app/app.dart';
import 'package:words/app_bloc_observer.dart';
import 'package:words/app_inject.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupInjects();
  Bloc.observer = AppBlocObserver(
      getIt.get()
  );
  runApp(const App());
}