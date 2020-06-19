import 'package:flutter/material.dart';
import 'functions.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: bar('Meu ID-Card'),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              pict('assets/me.jpg'),
              espacamento(30.0),
              title('NOME'),
              espacamento(10.0),
              information('João'),
              espacamento(30.0),
              title('SOBRENOME'),
              espacamento(10.0),
              information('Ayalla'),
              espacamento(30.0),
              title('IDADE'),
              espacamento(10.0),
              information('19'),
              espacamento(30.0),
              title('ESTUDA'),
              espacamento(10.0),
              information('Ciência da Computação'),
              espacamento(30.0),
              email('jvaaa@ic.ufal.br'),
            ]),
      ),
      floatingActionButton: botao('Meu Github'),
    ),
  ));
}

// export PATH=`pwd`/flutter/bin:$PATH
// flutter run -d chrome
