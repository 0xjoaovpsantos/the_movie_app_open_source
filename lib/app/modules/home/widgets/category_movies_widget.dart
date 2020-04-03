import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';

class CategoryMoviesWidget extends StatefulWidget {
  @override
  _CategoryMoviesWidgetState createState() => _CategoryMoviesWidgetState();
}

class _CategoryMoviesWidgetState extends State<CategoryMoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6))),
            padding: EdgeInsets.all(10),
            child: Text(
              "Upcoming",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6))),
            padding: EdgeInsets.all(10),
            child: Text(
              "Popular",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
