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
      margin: EdgeInsets.only(left: 12, top: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Popular Movies",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                /*Icon(Icons.more_vert)*/
              ]),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 240,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ListMovies),
          ),
        ],
      ),
    );
  }

  Widget ListMovies(context, index) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: <Widget>[
          Image.network(
              "http://image.tmdb.org/t/p/w500//5vHssUeVe25bMrof1HyaPyWgaP.jpg",
              height: 180),
          SizedBox(height: 4),
          Text(
            "John Wick",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            "2014-10-22",
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
