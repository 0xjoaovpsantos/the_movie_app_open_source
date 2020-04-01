import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';

class DescriptionPage extends StatefulWidget {
  final String title;
  const DescriptionPage({Key key, this.title = "Description"})
      : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDescription,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: 280,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "http://image.tmdb.org/t/p/original//3s9O5af2xWKWR5JzP2iJZpZeQQg.jpg"),
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
                            "Coco",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "    2017",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "109m | ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Animation, Adventure, Comedy",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
