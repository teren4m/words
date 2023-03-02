enum InfoType {
  synonym,
  translate,
}

mixin WordInfo {
  abstract InfoType type;
}

class Synonym with WordInfo {
  @override
  InfoType type = InfoType.synonym;
}

class Translate with WordInfo {
  @override
  InfoType type = InfoType.translate;
}
