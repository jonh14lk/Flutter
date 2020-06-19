import 'package:flutter/material.dart';
import 'pages/inicio.dart';
import 'pages/biblioteca.dart';
import 'pages/buscar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Tela1(),
    Tela2(),
    Tela3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[900],
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("Início"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Sua Biblioteca"),
            icon: Icon(Icons.library_music),
          ),
          BottomNavigationBarItem(
            title: Text("Buscar"),
            icon: Icon(Icons.search),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
