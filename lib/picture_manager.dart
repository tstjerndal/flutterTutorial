import 'package:flutter/material.dart';

import 'package:course1/picture_control.dart';
import './pictures.dart';

class PictureManager extends StatefulWidget {
  final String startingPicture;

  PictureManager({this.startingPicture = 'Pictures 99'}){
    print ('PictureManager Widget Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print ('PictureManager Create State');
    return _PictureManagerState();
  }
}

class _PictureManagerState extends State<PictureManager> {
  List<String> _pictures = [];

  @override
  void initState() {
    print ('PictureManager init state');
   _pictures.add(widget.startingPicture);
    super.initState();
  }

  @override
  void didUpdateWidget(PictureManager oldWidget) {
    print ('PictureManager init state');
    super.didUpdateWidget(oldWidget);
  }

  void _addPictures(String picture){
    setState(() {
      _pictures.add(picture);
      print(_pictures);
    });
  }

  @override
  Widget build(BuildContext context) {
    print ('PictureManager didUpdateWidget');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: PictureControl(_addPictures),
      ),
      Pictures(_pictures)
    ],);
  }
}
