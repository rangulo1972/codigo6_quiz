import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //creamos la lista de preguntas
  List<String> questions = [
    "La tierra es plana.",
    "El hombre llegó a la luna.",
    "Soy millonario."
  ];

  //creamos una lista de widgets para mostrar el score de aciertos
  List<Widget> scoreKeeper = [
    Icon(
      Icons.check,
      color: Color(0xff3bceac),
      size: 30.0,
    ),
    Icon(
      Icons.close,
      color: Color(0xfffe6d73),
      size: 30.0,
    ),
  ];

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
                  questions[1],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            //hacemos que el botón tenga margen
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  scoreKeeper.add(
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  );
                  setState(() {});
                },
                color: Colors.green,
                child: const Text(
                  "Verdadero",
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
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
