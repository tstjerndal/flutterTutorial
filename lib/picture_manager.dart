import 'package:flutter/material.dart';

import './pictures.dart';

class PictureManager extends StatefulWidget {
  final String startingPicture;

  PictureManager(this.startingPicture);

  @override
  State<StatefulWidget> createState() {
    return _PictureManagerState();
  }
}

class _PictureManagerState extends State<PictureManager> {
  List<String> _pictures = [];

  @override
  void initState() {
   _pictures.add(widget.startingPicture);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _pictures.add('Advanced picture');
              print(_pictures);
            });
          },
          child: Text('Add picture'),
        ),
      ),
      Pictures(_pictures)
    ],);
  }
}
