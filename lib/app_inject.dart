import 'package:get_it/get_it.dart';
import 'package:words/analytics/analytics_helper.dart';
import 'package:words/analytics/google_analytics_helper.dart';
import 'package:words/screen/card/add/usecase/get_word_use_case.dart';

final getIt = GetIt.instance;

GetWordUsecase _getWordUsecase() {
  return GetWordUsecase();
}

AnalyticsHelper _getAnalyticsHelper() {
  return GoogleAnalyticsHelper();
}

void setupInjects() {
  getIt.registerFactory(_getWordUsecase);
  getIt.registerFactory(_getAnalyticsHelper);
}
