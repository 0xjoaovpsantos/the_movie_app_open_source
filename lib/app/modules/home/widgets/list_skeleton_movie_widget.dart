import "package:flutter/material.dart";
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:the_movie_app_open_source/app/models/movie.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_controller.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/skeleton_movie_widget.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class ListSkeletonMovieWidget extends StatefulWidget {
  @override
  _ListSkeletonMovieWidgetState createState() =>
      _ListSkeletonMovieWidgetState();
}

class _ListSkeletonMovieWidgetState extends State<ListSkeletonMovieWidget> {
  HomeController _controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SkeletonAnimation(
                  child: Container(
                      width: 160, height: 30, color: Colors.grey[300]))
            ],
          ),
          Wrap(
            spacing: 20,
            children: <Widget>[
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
              SkeletonMovieWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
