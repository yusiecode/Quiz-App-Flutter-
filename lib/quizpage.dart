import 'package:quizzler/questions.dart';

class QuestionBank {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(
        questionText: 'National bird of pakistan is chukar',
        answerNumber: true),
    Question(
        questionText: 'Pakistan won the Hockey World Cup four times',
        answerNumber: true),
    Question(
        questionText:
            'Agha Khan became the first elected President of Pakistan.',
        answerNumber: false),
    Question(
        questionText: 'Pakistan won 3 Gold Medals in Olympics All Time',
        answerNumber: true),
    Question(
        questionText: 'Pakistan Largest University is Punjab',
        answerNumber: true),
    Question(
        questionText: 'Pakistan is located in East Asia', answerNumber: false),
    Question(
        questionText: 'Pakistan becomes republic in 1947', answerNumber: false),
    Question(
        questionText: 'Highest Peak of Mountain is Mount Everest in Pakistan',
        answerNumber: false),
    Question(
        questionText: 'Jasmin is the national flower of pakistan',
        answerNumber: true),
    Question(
        questionText: 'Pakistan has won the world cup of cricket in Australia',
        answerNumber: true),
    Question(
        questionText: 'Google was originally called "Backrub".',
        answerNumber: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answerNumber: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answerNumber: true),
    Question(
        questionText: 'Google was originally called "Backrub".',
        answerNumber: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answerNumber: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answerNumber: true),
  ];

  void questionNumber() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answerNumber;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
