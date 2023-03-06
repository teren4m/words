import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/screen/card/add/bloc/card_add_bloc.dart';
import 'package:words/screen/card/add/bloc/card_add_state.dart';

class CardAddScreenBody extends StatefulWidget {
  @protected
  final CardAddBlock bloc;

  const CardAddScreenBody(this.bloc, {super.key});

  bool isApplyButtonActive() => false;

  @override
  State<StatefulWidget> createState() {
    return _CardAddScreenBodyState();
  }
}

class _CardAddScreenBodyState extends State<CardAddScreenBody> {
  @protected
  final wordTextController = TextEditingController();

  @override
  void initState() {
    wordTextController.addListener(() {
      var word = wordTextController.text;
      widget.bloc.textChanged(word);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          TextField(
            controller: wordTextController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add word',
            ),
          ),
          Expanded(
            child: BlocBuilder<CardAddBlock, CardAddState>(
              builder: (context, state){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: const CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    wordTextController.dispose();
    super.dispose();
  }
}
