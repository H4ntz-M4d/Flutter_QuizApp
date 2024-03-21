class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  //You can use a method function in bellow or you can use approach getter for the code
  //List<String> getShuffleAnswers(){}

  List<String> get shuffleAnswers{
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}