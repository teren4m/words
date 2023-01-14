import 'package:flutter/material.dart';
import 'package:words/navigation_bar_container.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarContainer(),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: MaterialButton(
          child: const Text("Settings"),
          onPressed: () {
            Navigator.of(context).pushNamed('/settings');
          },
        ),
      ),
    );
  }
}
