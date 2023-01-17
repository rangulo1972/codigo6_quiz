import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //cramos el puntero de posición para el listado de preguntas
  int questionNumber = 0;
  //creamos la lista de preguntas
  List<String> questions = [
    "La tierra es plana.", //false
    "El hombre llegó a la luna.", //true
    "Los meses del año son 13", //false
    "Un año bisiesto es cada 3 años", //false
    "Los colores primarios son 4", //false
  ];
  //creamos listado de respuestas
  List<bool> answers = [false, true, false, false, false];

  //creamos una lista de widgets para mostrar el score de aciertos
  List<Icon> scoreKeeper = [];

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
                  questions[questionNumber],
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
                  //capturamos la respuesta a la pregunta realizada
                  bool correctAnswer = answers[questionNumber];
                  //hacemos la comparación de la respuesta correcta a la pregunta
                  if (correctAnswer == true) {
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
                  questionNumber++;
                },
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
                  //capturamos la respuesta a la pregunta realizada
                  bool correctAnswer = answers[questionNumber];
                  //hacemos la comparación de la respuesta correcta a la pregunta
                  if (correctAnswer == false) {
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
                  questionNumber++;
                },
                color: Colors.red,
                child: const Text(
                  "Falso",
                ),
              ),
            ),
          ),
//          ElevatedButton(onPressed: () {}, child: Text("Hola")),
//          ElevatedButton(onPressed: () {}, child: Text("Hola")),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
