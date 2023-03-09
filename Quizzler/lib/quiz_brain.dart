import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('몇몇의 고양이들은 사람에게 알레르기가 있다.', true),
    Question('소를 계단 아래로 이끌 수는 있지만 계단 위로 올라가게 할 수는 없다.', false),
    Question('인간 뼈의 약 1/4이 발에 있다.', true),
    Question('민달팽이의 피는 녹색이다.', true),
    Question('고양이는 자신의 이름을 알아들을 수 있으나 무시하는 경우가 많다.', true),
    Question('포르투갈에서는 바다에서 오줌을 싸는 것이 불법이다.', true),
    Question('낙타의 혹은 대부분 물로 차있다.', false),
    Question('달팽이도 이빨이 있다.', true),
    Question('물고기는 기침을 하지 않는다', false),
    Question('인간 폐 두 개의 전체 표면적은 약 70제곱미터이다.', true),
    Question('Google은 원래 \"Backrub\"이라고 불렸다.', true),
    Question('물고기는 귀가 없다.', false),
    Question('뱀은 뒤로 갈 수 없다.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
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
