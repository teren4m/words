import 'package:words/repository/model/word.dart';
import 'package:words/screen/card/add/bloc/card_add_event.dart';

abstract class CardAddState {
  const CardAddState();
}

class NoInfo extends CardAddState {
  const NoInfo();
}

class WordInfo extends CardAddState {
  final Word word;

  const WordInfo(this.word);
}
