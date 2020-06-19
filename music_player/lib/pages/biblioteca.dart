import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final image;
  final title;
  ItemCard(this.image, this.title);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120.0,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      height: 140.0,
                      width: double.infinity,
                    )),
                Positioned(
                  right: 16.0,
                  top: 16.0,
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.white.withOpacity(0.6),
                    size: 24.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}

Widget espacamento(double) {
  return SizedBox(
    height: double,
  );
}

class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        espacamento(50.0),
        Text(
          'Minhas Playlists',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        espacamento(35.0),
        RaisedButton(
          onPressed: () {},
          color: Colors.amberAccent[200],
          child: Text(
            'Criar',
            style: TextStyle(
              color: Colors.purple[900],
              fontSize: 20,
            ),
          ),
        ),
        espacamento(35.0),
        Row(
          children: <Widget>[
            ItemCard('assets/dj.jpg', 'Playlist 1'),
            SizedBox(
              width: 16.0,
            ),
            ItemCard('assets/dj.jpg', 'Playlist2'),
          ],
        ),
        espacamento(32.0),
        Row(
          children: <Widget>[
            ItemCard('assets/dj.jpg', 'Playlist 3'),
            SizedBox(
              width: 16.0,
            ),
            ItemCard('assets/dj.jpg', 'Playlist4'),
          ],
        ),
      ]),
    );
  }
}
