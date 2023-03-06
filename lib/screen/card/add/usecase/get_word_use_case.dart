import 'package:words/repository/model/word.dart';

class GetWordUsecase {
  GetWordUsecase();

  Word getWord(String word) {
    return Word(
      text: word,
      wordInfoList: List.empty(),
    );
  }
}
