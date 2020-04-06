import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class FooterDescriptionWidgetSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SkeletonAnimation(
              child: Container(
                height: 16,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SkeletonAnimation(
              child: Container(
                height: 16,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SkeletonAnimation(
              child: Container(
                height: 16,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(height: 4),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SkeletonAnimation(
              child: Container(
                height: 16,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ),
          )
        ],
      ),
    );
  }
}
