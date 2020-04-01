import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
