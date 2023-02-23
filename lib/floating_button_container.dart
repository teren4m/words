import 'package:flutter/material.dart';

class FloatingButtonContainer extends StatefulWidget {

  final Function onPressed;
  const FloatingButtonContainer({super.key,required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return _FloatingButtonState();
  }
}

class _FloatingButtonState extends State<FloatingButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        widget.onPressed();
      },
      tooltip: 'Increment Counter',
      child: const Icon(Icons.add),
    );
  }
}
