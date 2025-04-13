class QuestionsModelItem {
  final String question;
  final List<String> answers;
  final bool isMultipleAnswer;
  final List<String> correctAnswers;
  List<String> chosenAnswers;

  QuestionsModelItem({
    required this.question,
    required this.answers,
    required this.isMultipleAnswer,
    required this.correctAnswers,
    List<String>? chosenAnswers,
  }) : chosenAnswers = chosenAnswers ?? [];

  bool checkAnswer() {
    final correctSet = correctAnswers.toSet();
    final chosenSet = chosenAnswers.toSet();
    return correctSet.length == chosenSet.length &&
        correctSet.containsAll(chosenSet);
  }
}

List<QuestionsModelItem> getQuestionsList = [
  QuestionsModelItem(
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    answers: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    isMultipleAnswer: false,
    correctAnswers: ['Strongly satisfied'],
  ),
  QuestionsModelItem(
    question: 'What vitamins do you take?',
    answers: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
    isMultipleAnswer: true,
    correctAnswers: ['Vitamin D3', 'Zinc'],
  ),
  QuestionsModelItem(
    question: 'What is the capital of Egypt?',
    answers: ['Berlin', 'Madrid', 'Cairo', 'Rome'],
    isMultipleAnswer: false,
    correctAnswers: ['Cairo'],
  ),
  QuestionsModelItem(
    question: 'Select the prime numbers:',
    answers: ['2', '3', '4', '5'],
    isMultipleAnswer: true,
    correctAnswers: ['2', '3', '5'],
  ),
];
