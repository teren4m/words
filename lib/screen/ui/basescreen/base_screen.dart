import 'package:flutter/material.dart';
import 'package:words/app/bloc/app_bloc.dart';
import 'package:words/app/bloc/app_bloc_state.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_container.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseScreen extends StatelessWidget {
  @protected
  final FloatingButtonType buttonType;
  @protected
  final Function? onPressed;
  final Bloc bloc;
  @protected
  final Function createBody;

  const BaseScreen({
    super.key,
    required this.createBody,
    this.buttonType = FloatingButtonType.none,
    this.onPressed,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    var appBloc = context.read<AppBloc>();
    appBloc.updateType(buttonType);
    return Scaffold(
        body: SafeArea(
          child: createBody(context),
        ),
        floatingActionButton: BlocBuilder<AppBloc, AppBlocState>(
          builder: (_, state) {
            return state.type == FloatingButtonType.none
                ? Container()
                : FloatingButtonContainer(
                    onPressed: onPressed ?? () {},
                    type: buttonType,
                  );
          },
        ));
  }
}
