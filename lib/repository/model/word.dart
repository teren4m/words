import 'package:words/repository/model/word_info.dart';

class Word {
  final String text;
  final List<WordInfo> wordInfoList;

  const Word({
    required this.text,
    required this.wordInfoList,
  });
}
