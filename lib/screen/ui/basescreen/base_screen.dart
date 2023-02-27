import 'package:flutter/material.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_container.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen extends StatelessWidget {
  @protected
  final Widget body;
  @protected
  final FloatingButtonType buttonType;
  @protected
  final Function? onPressed;
  final Bloc bloc;

  const BaseScreen({
    super.key,
    required this.body,
    this.buttonType = FloatingButtonType.none,
    this.onPressed,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => bloc,
          child: body,
        ),
      ),
      floatingActionButton: buttonType == FloatingButtonType.none
          ? null
          : FloatingButtonContainer(
              onPressed: onPressed ?? () {},
              type: buttonType,
            ),
    );
  }
}
