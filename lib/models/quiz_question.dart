class QuizQuestion {
 const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shufffledAnswers = List.of(answers);
    shufffledAnswers.shuffle();
    return shufffledAnswers;
  }
}