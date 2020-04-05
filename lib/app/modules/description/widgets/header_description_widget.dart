import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class HeaderDescriptionWidget extends StatefulWidget {
  @override
  _HeaderDescriptionWidgetState createState() =>
      _HeaderDescriptionWidgetState();
}

class _HeaderDescriptionWidgetState extends State<HeaderDescriptionWidget> {
  DescriptionController _controller = Modular.get<DescriptionController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 280,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(Constants.baseUrlBackdropImg +
                      _controller.movie.backdropPath),
                  fit: BoxFit.fill)),
        ),
        Container(
          color: AppColors.posterMovie,
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      _controller.movie.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "    " + _controller.movie.releaseDate.substring(0, 4),
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      _controller.movie.runtime.toString() + "m | ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      _controller.genresToString(),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
