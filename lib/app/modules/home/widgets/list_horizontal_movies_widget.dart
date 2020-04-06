import 'package:cached_network_image/cached_network_image.dart';
import "package:flutter/material.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class ListHorizontalMoviesWidget extends StatefulWidget {
  final String currentSection;
  final List<Movie> movies;

  const ListHorizontalMoviesWidget(
      {Key key, @required this.currentSection, @required this.movies})
      : super(key: key);
  @override
  _ListHorizontalMoviesWidgetState createState() =>
      _ListHorizontalMoviesWidgetState();
}

class _ListHorizontalMoviesWidgetState
    extends State<ListHorizontalMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        margin: EdgeInsets.only(top: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.currentSection,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            Wrap(
              spacing: 20,
              children:
                  widget.movies.map((movie) => MoviePoster(movie)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget MoviePoster(Movie movie) {
    return GestureDetector(
        onTap: () {
          Modular.to.pushNamed("/DescriptionMovie/" + movie.id.toString());
        },
        child: Container(
          width: 123,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: Constants.baseUrlPosterMovie + movie.posterPath,
                fit: BoxFit.fill,
                height: 180,
                width: 123,
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
        ));
  }
}
