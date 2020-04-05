import 'package:flutter/material.dart';

class FooterDescriptionWidget extends StatelessWidget {
  final String overview;

  const FooterDescriptionWidget({Key key, @required this.overview})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        this.overview,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
