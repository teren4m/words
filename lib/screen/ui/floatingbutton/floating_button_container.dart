import 'package:flutter/material.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_type.dart';

class FloatingButtonContainer extends StatefulWidget {
  final Function onPressed;
  final FloatingButtonType type;

  const FloatingButtonContainer({
    super.key,
    required this.onPressed,
    required this.type,
  });

  @override
  State<StatefulWidget> createState() {
    return _FloatingButtonState();
  }
}

class _FloatingButtonState extends State<FloatingButtonContainer> {

  bool isProgress = false;

  Widget getIcon() {
    IconData icon;
    switch (widget.type) {
      case FloatingButtonType.done:
        icon = Icons.done;
        break;
      case FloatingButtonType.add:
        icon = Icons.add;
        break;
      case FloatingButtonType.none:
        throw "FloatingButtonType.none";
    }
    return Icon(icon);
  }

  Widget getProgress() {
    return const CircularProgressIndicator(color: Colors.white,);
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        widget.onPressed();
      },
      child: getIcon(),
    );
  }
}
