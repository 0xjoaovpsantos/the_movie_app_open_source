import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';

class SearchMoviesWidget extends StatefulWidget {
  @override
  _SearchMoviesWidgetState createState() => _SearchMoviesWidgetState();
}

class _SearchMoviesWidgetState extends State<SearchMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.greySearch,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: "Search for movies",
              prefixIcon: Icon(Icons.search, color: Colors.grey)),
        ));
  }
}
