var sentences = [
  Sentence(
    acquiredLanguageSentence:
        "Repeatedly speaking English sentences will help you get used to speaking sentences.",
    nativeLanguageSentence: "英文を繰り返し話すことで、文章を話すのに慣れることができます。",
  ),
  Sentence(
    acquiredLanguageSentence:
        "Even the best headphones do not sound as good as a live concert.",
    nativeLanguageSentence: "最高品質のヘッドフォンでさえ、ライブのコンサートには音でかなわない。",
  ),
];

class Sentence {
  String acquiredLanguageSentence;
  String nativeLanguageSentence;

  Sentence({
    required this.acquiredLanguageSentence,
    required this.nativeLanguageSentence,
  });
}
