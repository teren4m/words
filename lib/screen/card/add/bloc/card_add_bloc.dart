import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:words/app_inject.dart';
import 'package:words/screen/card/add/bloc/card_add_event.dart';
import 'package:words/screen/card/add/usecase/get_word_use_case.dart';

import 'card_add_state.dart';

class CardAddBlock extends Bloc<CardAddEvent, CardAddState> {
  @protected
  GetWordUsecase getWordUsecase = getIt.get();

  CardAddBlock(BuildContext context) : super(const NoInfo()) {
    on<GetWordInfo>((event, emit) {
      emit(
          WordInfo(
              getWordUsecase.getWord(event.word)
          )
      );
    });
  }

  void getWordInfo(String word) {
    add(GetWordInfo(word));
  }

  void addWord() {}
}
