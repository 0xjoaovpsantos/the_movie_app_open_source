import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app_open_source/app/models/actor.dart';
import 'package:the_movie_app_open_source/app/utils/constants.dart';

class ListActors extends StatefulWidget {
  final List<Actor> actors;

  const ListActors({Key key, @required this.actors}) : super(key: key);

  @override
  _ListActorsState createState() => _ListActorsState();
}

class _ListActorsState extends State<ListActors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.builder(
        itemCount: widget.actors.length - 1,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: actorPoster,
      ),
    );
  }

  Widget actorPoster(context, index) {
    return Container(
      width: 120,
      child: Stack(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl:
                Constants.baseUrlBackdropImg + widget.actors[index].profilePath,
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 150,
            child: Container(
              width: 120,
              child: Text(
                widget.actors[index].name,
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
