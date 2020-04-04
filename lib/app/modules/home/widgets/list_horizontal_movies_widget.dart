import "package:flutter/material.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_controller.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class ListHorizontalMoviesWidget extends StatefulWidget {
  final List<Movie> movies;

  const ListHorizontalMoviesWidget({Key key, this.movies}) : super(key: key);
  @override
  _ListHorizontalMoviesWidgetState createState() =>
      _ListHorizontalMoviesWidgetState();
}

class _ListHorizontalMoviesWidgetState
    extends State<ListHorizontalMoviesWidget> {
  HomeController _controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(_controller.currentSectionDescription,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                /*Icon(Icons.more_vert)*/
              ]),
          Wrap(
            spacing: 20,
            children: widget.movies.map((movie) => MoviePoster(movie)).toList(),
          ),
        ],
      ),
    );
  }

  Widget MoviePoster(Movie movie) {
    return GestureDetector(
        onTap: () {
          Modular.to.pushNamed("/DescriptionMovie/" + movie.id.toString());
        },
        child: Container(
          width: 122,
          margin: EdgeInsets.only(top: 20),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(
                    Constants.baseUrlPosterMovie + movie.posterPath,
                    height: 180,
                    width: 123,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 4),
                  Text(
                    movie.title,
                    style: TextStyle(fontSize: 11, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: Text(
                      movie.releaseDate,
                      style: TextStyle(fontSize: 11, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
