import 'package:flutter/material.dart';

class CardListScreenBody extends StatelessWidget {
  const CardListScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: MaterialButton(
        child: const Text("Settings"),
        onPressed: () {
          Navigator.of(context).pushNamed('/settings');
        },
      ),
    );
  }

}