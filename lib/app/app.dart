import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/app/bloc/app_bloc.dart';
import 'package:words/screen/card/add/card_add_screen.dart';
import 'package:words/screen/card/list/card_list_screen.dart';
import 'package:words/screen/settings/SettingsScreen.dart';
import 'package:words/theme_cudit.dart';

class App extends StatelessWidget {
  static GlobalKey mtAppKey = GlobalKey();

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => ThemeCubit()),
        BlocProvider(create: (BuildContext context) => AppBloc()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            key: mtAppKey,
            routes: <String, WidgetBuilder>{
              '/card/list': (BuildContext context) {
                return const CardListScreen();
              },
              '/card/add': (BuildContext context) {
                return const CardAddScreen();
              },
              '/settings': (BuildContext context) {
                return const SettingsScreen();
              },
            },
            theme: theme,
            initialRoute: "/card/list",
          );
        },
      ),
    );
  }
}

class CustomNamedPageTransition extends PageRouteBuilder {
  CustomNamedPageTransition(
    GlobalKey materialAppKey,
    String routeName, {
    Object? arguments,
  }) : super(
          settings: RouteSettings(
            arguments: arguments,
            name: routeName,
          ),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            assert(materialAppKey.currentWidget != null);
            assert(materialAppKey.currentWidget is MaterialApp);
            var mtapp = materialAppKey.currentWidget as MaterialApp;
            var routes = mtapp.routes;
            assert(routes!.containsKey(routeName));
            return routes![routeName]!(context);
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
          transitionDuration: Duration(seconds: 1),
        );
}
