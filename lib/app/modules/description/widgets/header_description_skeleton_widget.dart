import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class HeaderDescriptionSkeletonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SkeletonAnimation(
            child: Container(
          color: Colors.grey[300],
          height: 280,
          width: MediaQuery.of(context).size.width,
        )),
        Container(
          //color: AppColors.posterMovie,
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SkeletonAnimation(
                      child: Container(
                          color: Colors.grey[300], height: 20, width: 80),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: SkeletonAnimation(
                        child: Container(
                          color: Colors.grey[300],
                          height: 16,
                          width: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: <Widget>[
                    SkeletonAnimation(
                      child: Container(
                        color: Colors.grey[300],
                        height: 16,
                        width: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: SkeletonAnimation(
                        child: Container(
                          color: Colors.grey[300],
                          height: 16,
                          width: 100,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
