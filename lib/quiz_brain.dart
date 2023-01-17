import 'package:codigo6_quiz/question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question(questionText: "La tierra es plana.", questionAnswer: false),
    Question(questionText: "El hombre llegó a la luna.", questionAnswer: true),
    Question(questionText: "Los meses del año son 13.", questionAnswer: false),
    Question(
        questionText: "Un años bisiesto es cada 3 años.",
        questionAnswer: false),
    Question(
        questionText: "Los colores primarios son 4.", questionAnswer: false),
  ];

  //creamos funciones que nos retorne el texto de una pregunta de acuerdo a su posición.
  String getQuestionText(int position) {
    return _questions[position].questionText;
  }

  //creamos funciones que nos retorne la respuesta una pregunta de acuerdo a su posición.
  bool getQuestionAnswer(int position) {
    return _questions[position].questionAnswer;
  }
}
