class QuestionsModelItem {
  final String question;
  final List<String> answers;
  final bool isMultipleAnswer;
  final String correctAnswer;
  final String? chosenAnswer;

  QuestionsModelItem({
    required this.question,
    required this.answers,
    required this.isMultipleAnswer,
    required this.correctAnswer,
    this.chosenAnswer,
  });

  bool checkAnswer() {
    return chosenAnswer == correctAnswer;
  }
}

List<QuestionsModelItem> getQuestionsList = [
  QuestionsModelItem(
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    answers: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    isMultipleAnswer: false,
    correctAnswer: "",
  ),
  QuestionsModelItem(
    question: 'What vitamins do you take?',
    answers: ['Vitmin D3', 'Vitamin B', 'Zinc', 'Mangnesium'],
    isMultipleAnswer: true,
    correctAnswer: "",
  ),
  QuestionsModelItem(
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    answers: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    isMultipleAnswer: false,
    correctAnswer: "",
  ),
  QuestionsModelItem(
    question: 'What vitamins do you take?',
    answers: ['Vitmin D3', 'Vitamin B', 'Zinc', 'Mangnesium'],
    isMultipleAnswer: true,
    correctAnswer: "",
  ),
];
