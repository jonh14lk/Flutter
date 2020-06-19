import 'package:flutter/material.dart';

Widget espacamento(double) {
  return SizedBox(
    height: double,
  );
}

class Tela3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        espacamento(50.0),
        Text(
          'Buscar',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
