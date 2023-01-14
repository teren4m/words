import 'package:flutter/material.dart';
import 'package:words/navigation_bar_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        alignment: Alignment.bottomCenter,
        child: const Text("some Settings"),
      ),
      bottomNavigationBar: const NavigationBarContainer(),
    );
  }
}
