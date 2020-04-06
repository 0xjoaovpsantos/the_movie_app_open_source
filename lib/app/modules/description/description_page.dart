import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_movie_app_open_source/app/modules/description/description_controller.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/footer_description_widget.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/footer_description_widget_skeleton.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/header_description_skeleton_widget.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/header_description_widget.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/list_actors_skeleton_widget.dart';
import 'package:the_movie_app_open_source/app/modules/description/widgets/list_actors_widget.dart';
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
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Observer(
                builder: (context) {
                  if (_controller.movie == null) {
                    return HeaderDescriptionSkeletonWidget();
                  } else {
                    return HeaderDescriptionWidget();
                  }
                },
              ),
              Observer(
                builder: (context) {
                  if (_controller.actors == null) {
                    return ListActorsSkeletonWidget();
                  } else {
                    return ListActors(actors: _controller.actors);
                  }
                },
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              Observer(builder: (context) {
                if (_controller.movie == null) {
                  return FooterDescriptionWidgetSkeleton();
                } else {
                  return FooterDescriptionWidget(
                      overview: _controller.movie.overview);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
