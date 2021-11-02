class Question {
  //? added after string and bool to handle the null safety.
  String? questionText;
  bool? questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
