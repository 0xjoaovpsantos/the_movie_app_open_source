import "package:flutter/material.dart";

class ListHorizontalMoviesWidget extends StatefulWidget {
  @override
  _ListHorizontalMoviesWidgetState createState() =>
      _ListHorizontalMoviesWidgetState();
}

class _ListHorizontalMoviesWidgetState
    extends State<ListHorizontalMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Popular Movies",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                /*Icon(Icons.more_vert)*/
              ]),
          Wrap(
            spacing: 20,
            children: <Widget>[
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
              ListMovies(),
            ],
          ),
        ],
      ),
    );
  }

  Widget ListMovies() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.network(
                "http://image.tmdb.org/t/p/w500//5vHssUeVe25bMrof1HyaPyWgaP.jpg",
                height: 180,
                width: 123,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 4),
              Text(
                "John Wick",
                style: TextStyle(fontSize: 11, color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
          Positioned(
            top: 146,
            left: 28,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  border: Border.all(color: Colors.white)),
              child: Text(
                "2014-10-22",
                style: TextStyle(fontSize: 11, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
