import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/list_horizontal_movies_widget.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/category_movies_widget.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDescription,
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: <Widget>[
          CategoryMoviesWidget(),
          SizedBox(height: 20),
          ListHorizontalMoviesWidget(),
        ]),
      )),
    );
  }
}
