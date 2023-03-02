abstract class CardAddEvent {
  const CardAddEvent();
}

class GetWordInfo extends CardAddEvent {
  final String word;

  const GetWordInfo(this.word);
}
