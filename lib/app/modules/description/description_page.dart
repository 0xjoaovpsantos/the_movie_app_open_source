import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:the_movie_app_open_source/app/modules/home/widgets/list_horizontal_movies_widget.dart';
import 'package:the_movie_app_open_source/app/utils/app_colors.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class DescriptionPage extends StatefulWidget {
  final int idMovie;

  const DescriptionPage({Key key, this.idMovie}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  DescriptionController _controller = Modular.get<DescriptionController>();

  @override
  void initState() {
    super.initState();
    _controller.searchDescriptionMovie(widget.idMovie);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDescription,
      body: Observer(
        builder: (context) {
          if (_controller.movie == null) {
            return Center(
              child: Container(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
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
                                  "    " +
                                      _controller.movie.releaseDate
                                          .substring(0, 4),
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
                    ),
                    Observer(
                      builder: (context) {
                        if (_controller.actors == null) {
                          return Center(
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else {
                          return Container(
                            height: 190,
                            child: ListView.builder(
                              itemCount: _controller.actors.length - 1,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: MyList,
                            ),
                          );
                        }
                      },
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        _controller.movie.overview,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  Widget MyList(context, index) {
    return Container(
      width: 120,
      child: Stack(
        children: <Widget>[
          Image.network(
            Constants.baseUrlBackdropImg +
                _controller.actors[index].profilePath,
            height: 180,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 150,
            child: Container(
              width: 120,
              child: Text(
                _controller.actors[index].name,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
