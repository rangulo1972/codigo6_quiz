import 'package:flutter/material.dart';
import 'package:codigo6_quiz/quiz_brain.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //cramos el puntero de posición para el listado de preguntas
  QuizBrain pregunta = QuizBrain();
  //creamos una lista de widgets para mostrar el score de aciertos
  List<Icon> scoreKeeper = [];
  //creamos la función que realizará la verificación de las respuestas
  void checkQuestion(bool type) {
    //capturamos la respuesta a la pregunta realizada
    bool correctAnswer = pregunta.getQuestionAnswer();
    //hacemos la comparación de la respuesta correcta a la pregunta
    if (correctAnswer == type) {
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    setState(() {});
    pregunta.nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b2d42),
      body: Column(
        //para poder alargar los botones de Verdadero y Falso
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  pregunta.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            //botón de verdadero
            //hacemos que el botón tenga margen
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkQuestion(true);
                }, //end onPreseed
                color: Colors.green,
                child: const Text(
                  "Verdadero",
                ),
              ),
            ),
          ),
          Expanded(
            //botón de respuesta Falso
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  checkQuestion(false);
                }, //end onPressed
                color: Colors.red,
                child: const Text(
                  "Falso",
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
