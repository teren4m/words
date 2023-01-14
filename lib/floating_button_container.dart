import 'package:flutter/material.dart';

class FloatingButtonContainer extends StatefulWidget {
  const FloatingButtonContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingButtonState();
  }
}

class _FloatingButtonState extends State<FloatingButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment Counter',
      child: const Icon(Icons.add),
    );
  }
}
