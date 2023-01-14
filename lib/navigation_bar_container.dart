import 'package:flutter/material.dart';
import 'package:words/app.dart';

class NavigationBarContainer extends StatefulWidget {
  const NavigationBarContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NavigationBarContainer();
  }
}

class _NavigationBarContainer extends State<NavigationBarContainer> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.amber[800],
      onTap: (index) {
        if (index == 0) {
          Navigator.push(
            context,
            CustomNamedPageTransition(
              App.mtAppKey,
              "/",
            ),
          );
        }
        if (index == 1) {
          Navigator.pushAndRemoveUntil(
              context,
              CustomNamedPageTransition(
                App.mtAppKey,
                "/settings",
              ), (Route<dynamic> route) {
            return !route.willHandlePopInternally &&
                route is ModalRoute &&
                route.settings.name == '/';
          });
        }
        if (index == 2) {
          Navigator.pushAndRemoveUntil(
              context,
              CustomNamedPageTransition(
                App.mtAppKey,
                "/settings",
              ), (Route<dynamic> route) {
            return !route.willHandlePopInternally &&
                route is ModalRoute &&
                route.settings.name == '/';
          });
        }
      },
    );
  }
}
