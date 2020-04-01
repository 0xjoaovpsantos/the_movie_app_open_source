import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/list_horizontal_movies_widget.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/search_movies_widget.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: SearchMoviesWidget()),
      body: SingleChildScrollView(
          child: Container(
        child: Column(children: <Widget>[
          SizedBox(height: 20),
          ListHorizontalMoviesWidget(),
          ListHorizontalMoviesWidget()
        ]),
      )),
    );
  }
}
