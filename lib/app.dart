import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/pages/card/list/card_list_screen.dart';
import 'package:words/pages/settings/SettingsScreen.dart';
import 'package:words/theme_cudit.dart';

class App extends StatelessWidget {
  static GlobalKey mtAppKey = GlobalKey();
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return  MaterialApp(
            key: mtAppKey,
            routes: <String, WidgetBuilder>{
              '/': (BuildContext context){
                return const CardListScreen();
              },
              '/settings': (BuildContext context) {
                return const SettingsScreen();
              },
            },
            theme: theme,
            initialRoute: "/",
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
