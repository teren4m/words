import 'package:get_it/get_it.dart';
import 'package:words/screen/card/add/usecase/get_word_use_case.dart';

final getIt = GetIt.instance;

GetWordUsecase getWordUsecase() {
  return GetWordUsecase();
}

void setupInjects() {
  getIt.registerFactory(getWordUsecase);
}
