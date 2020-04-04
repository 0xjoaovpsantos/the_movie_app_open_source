import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_controller.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';

class CategoryMoviesWidget extends StatefulWidget {
  @override
  _CategoryMoviesWidgetState createState() => _CategoryMoviesWidgetState();
}

class _CategoryMoviesWidgetState extends State<CategoryMoviesWidget> {
  HomeController _controller = Modular.get<HomeController>();

  Color switchPrimary = Colors.white;
  Color switchSecond = AppColors.backgroundDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _controller.updateSection(
                  "Upcoming Movies", _controller.upComingMovies);
              setState(() {
                switchPrimary = Colors.white;
                switchSecond = AppColors.backgroundDescription;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: switchPrimary,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              padding: EdgeInsets.all(10),
              child: Text(
                "Upcoming",
                style: TextStyle(color: switchSecond),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _controller.updateSection(
                  "Popular Movies", _controller.popularMovies);
              setState(() {
                switchPrimary = AppColors.backgroundDescription;
                switchSecond = Colors.white;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: switchSecond,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6))),
              padding: EdgeInsets.all(10),
              child: Text(
                "Popular",
                style: TextStyle(color: switchPrimary),
              ),
            ),
          )
        ],
      ),
    );
  }
}
