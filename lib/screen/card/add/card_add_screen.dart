import 'package:flutter/material.dart';
import 'package:words/floating_button_container.dart';
import 'package:words/navigation/navigation_helper.dart';
import 'package:words/repository/model/word.dart';
import 'package:words/screen/card/add/card_add_screen_body.dart';
import 'package:words/screen/card/add/usecase/add_word_use_case.dart';

class CardAddScreen extends StatelessWidget {
  const CardAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navigation = NavigationHelper(context);
    var addWordUseCase = AddWordUseCae();
    var body = CardAddScreenBody();
    return Scaffold(
      body: SafeArea(
        child: body,
      ),
      floatingActionButton: FloatingButtonContainer(
        onPressed: () {
          addWordUseCase.add(Word());
          navigation.back();
        },
      ),
    );
  }
}