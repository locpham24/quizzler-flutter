import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  bool _isFinish = false;
  List<Question> _questionBank = [
    Question('1 + 1 = 3', false),
    Question('2 + 2 = 4', true),
    Question('3 * 3 = 10', false),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    } else {
      _isFinish = true;
    }
  }

  bool getIsFinish(){
    return _isFinish;
  }
  void resetQuiz(){
    _questionNumber = 0;
    _isFinish = false;
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}

