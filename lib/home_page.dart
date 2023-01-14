import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                "Verdadero",
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: Text(
                "Falso",
              ),
            ),
          ),
//          ElevatedButton(onPressed: () {}, child: Text("Hola")),
//          ElevatedButton(onPressed: () {}, child: Text("Hola")),
        ],
      ),
    );
  }
}
