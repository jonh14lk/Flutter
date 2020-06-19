import 'package:flutter/material.dart';
import 'package:link/link.dart';

Widget pict(text) {
  return Stack(
    children: <Widget>[
      Card(
        color: Colors.red[600],
        margin: const EdgeInsets.only(top: 0.0),
        child: SizedBox(
            height: 100.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            )),
      ),
      Positioned(
        top: .0,
        left: .0,
        right: .0,
        child: Center(
          child: CircleAvatar(
            backgroundImage: AssetImage(text),
            radius: 50.0,
          ),
        ),
      )
    ],
  );
}

Widget title(text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.grey,
      letterSpacing: 2.0,
    ),
  );
}

Widget espacamento(double) {
  return SizedBox(
    height: double,
  );
}

Widget information(text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.amberAccent[200],
      letterSpacing: 2.0,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget email(text) {
  return Row(
    children: <Widget>[
      Icon(
        Icons.email,
        color: Colors.red[600],
      ),
      SizedBox(
        width: 10.0,
      ),
      Text(
        text,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
          letterSpacing: 1.0,
        ),
      ),
    ],
  );
}

Widget bar(text) {
  return AppBar(
    title: Text(text),
    centerTitle: true,
    backgroundColor: Colors.red[600],
  );
}

Widget botao(text, text2) {
  return OutlineButton(
    onPressed: () {
      Link(
        child: Text(text),
        url: 'text2',
      );
    },
    child: Text(text),
    textColor: Colors.red[600],
  );
}
