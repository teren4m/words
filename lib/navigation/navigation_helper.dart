import 'package:flutter/material.dart';

class NavigationHelper {
  final BuildContext context;

  const NavigationHelper(this.context);

  void openAddCard() {
    Navigator.pushNamed(context, '/card/add');
  }

  void back() {
    Navigator.pop(context);
  }
}
