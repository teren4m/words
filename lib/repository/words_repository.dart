import 'package:words/repository/model/word.dart';

class WordsRepository{

  static List<Word> words = List.empty();

  void addWord(Word word){
    words.add(word);
  }

  List<Word> getWords(){
    return words;
  }
}