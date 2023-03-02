import 'package:words/repository/model/word.dart';

class WordsRepository {
  static List<Word> words = List.empty();

  Word getWord(String word) {
    throw 'no word';
  }

  void addWord(Word word) {
    words.add(word);
  }

  List<Word> getWords() {
    return words;
  }
}
