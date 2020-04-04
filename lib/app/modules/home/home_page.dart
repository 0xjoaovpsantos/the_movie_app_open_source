import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/home/home_controller.dart';
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
  HomeController _controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDescription,
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: <Widget>[
          CategoryMoviesWidget(),
          SizedBox(height: 20),
          Observer(builder: (context) {
            if (_controller.currentListMovies == null) {
              return Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (_controller.currentListMovies.isEmpty) {
              return Center(
                child: Text("Verifique sua conexão com a internet!"),
              );
            } else {
              return ListHorizontalMoviesWidget(
                  movies: _controller.currentListMovies);
            }
          }),
        ]),
      )),
    );
  }
}
