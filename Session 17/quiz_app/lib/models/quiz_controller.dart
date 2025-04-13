import 'questions_model_item.dart';

class QuizController {
  int calculateScore(List<QuestionsModelItem> questions) {
    return questions.where((question) => question.checkAnswer()).length;
  }

  void toggleAnswer({
    required QuestionsModelItem question,
    required String answer,
  }) {
    if (question.isMultipleAnswer) {
      if (question.chosenAnswers.contains(answer)) {
        question.chosenAnswers.remove(answer);
      } else {
        question.chosenAnswers.add(answer);
      }
    } else {
      question.chosenAnswers = [answer];
    }
  }

  void restartQuiz() {
    getQuestionsList.forEach(
      (question) {
        question.chosenAnswers.clear();
      },
    );
  }
}
