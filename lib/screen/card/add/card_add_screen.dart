import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/screen/card/add/bloc/card_add_bloc.dart';
import 'package:words/screen/ui/basescreen/base_screen.dart';
import 'package:words/navigation/navigation_helper.dart';
import 'package:words/screen/card/add/card_add_screen_body.dart';

class CardAddScreen extends StatelessWidget {
  const CardAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navigation = NavigationHelper(context);
    var bloc = CardAddBlock(context);
    return BaseScreen(
      bloc: bloc,
      createBody: (context) => BlocProvider(
        create: (BuildContext context) => bloc,
        child: CardAddScreenBody(bloc),
      ),
      onPressed: () {
        navigation.back();
      },
    );
  }
}
