import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/screen/card/add/bloc/card_add_event.dart';

import 'card_add_state.dart';

class CardAddBlock extends Bloc<CardAddEvent, CardAddState> {
  CardAddBlock(BuildContext context) : super(InitState()){
  }

  void getWordInfo(String word) {}

  void addWord() {}
}
