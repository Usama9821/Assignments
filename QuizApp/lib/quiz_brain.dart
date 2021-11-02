import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Digital camera is input device used to take photographs', true),
    Question('FAX stands for First Away Xerox', false),
    Question(
        'Whaling / Whaling attack is a kind of phishing attacks that target senior executives and other high profile to access valuable information.',
        true),
    Question(
        'Freeware is software that is available for use at no monetary cost.',
        true),
    Question(
        'IPv6 Internet Protocol address is represented as eight groups of four Octal digits.',
        false),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'The hexadecimal number system contains digits from 1 - 15.', false),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('Octal number system contains digits from 0 - 7.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

//added ? after string to handle null safety
  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

//added ? after bool to handle null safety
  bool? getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

//added ? after bool to handle null safety
  bool? isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
