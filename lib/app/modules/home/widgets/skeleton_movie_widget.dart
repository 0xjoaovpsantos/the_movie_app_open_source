import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonMovieWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      margin: EdgeInsets.only(top: 20),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SkeletonAnimation(
                child: Container(
                    height: 180,
                    width: 123,
                    decoration: BoxDecoration(color: Colors.grey[300])),
              ),
              SizedBox(height: 4),
              SkeletonAnimation(
                child: Container(
                    height: 11,
                    width: 80,
                    decoration: BoxDecoration(color: Colors.grey[300])),
              ),
              SizedBox(height: 4),
              SkeletonAnimation(
                  child: Container(
                      height: 11,
                      width: 60,
                      decoration: BoxDecoration(color: Colors.grey[300])))
            ],
          ),
        ],
      ),
    );
  }
}
