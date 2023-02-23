import 'package:flutter/material.dart';
import 'package:words/floating_button_container.dart';
import 'package:words/navigation/navigation_helper.dart';
import 'package:words/screen/card/list/card_list_screen_body.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var navigation = NavigationHelper(context);
    return Scaffold(
      body: const CardListScreenBody(),
      floatingActionButton: FloatingButtonContainer(
        onPressed: () {
          navigation.openAddCard();
        },
      ),
    );
  }
}
