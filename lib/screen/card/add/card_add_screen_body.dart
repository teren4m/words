import 'package:flutter/material.dart';

class CardAddScreenBody extends StatelessWidget {
  final wordTextController = TextEditingController();

  CardAddScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            // controller: wordTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add word',
            ),
          ),
          TextField(
            // controller: wordTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add word',
            ),
          ),
        ],
      ),
    );
  }

  bool isApplyButtonActive() => false;
}
