import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class ListActorsSkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: actorPoster,
      ),
    );
  }

  Widget actorPoster(context, index) {
    return SkeletonAnimation(
      child: Container(
          margin: EdgeInsets.only(right: 10),
          height: 180,
          width: 120,
          color: Colors.grey[300]),
    );
  }
}
