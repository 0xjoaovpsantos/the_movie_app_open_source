import 'package:flutter/material.dart';
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
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: SearchMoviesWidget()),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
