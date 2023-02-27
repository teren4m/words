import 'package:flutter/material.dart';
import 'package:words/screen/card/add/bloc/card_add_bloc.dart';
import 'package:words/screen/card/add/interactor/card_add_screen_interactor.dart';
import 'package:words/screen/ui/basescreen/base_screen.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_container.dart';
import 'package:words/navigation/navigation_helper.dart';
import 'package:words/repository/model/word.dart';
import 'package:words/screen/card/add/card_add_screen_body.dart';
import 'package:words/screen/card/add/usecase/add_word_use_case.dart';
import 'package:words/screen/ui/floatingbutton/floating_button_type.dart';

class CardAddScreen extends StatelessWidget {
  const CardAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navigation = NavigationHelper(context);
    var addWordUseCase = AddWordUsecase();
    var body = CardAddScreenBody();
    var bloc = CardAddBlock();
    return BaseScreen(
      bloc: bloc,
      body: body,
      buttonType: FloatingButtonType.done,
      onPressed: () {
        navigation.back();
      },
    );
  }
}
