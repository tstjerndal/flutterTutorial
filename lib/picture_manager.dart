import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    print ('PictureManager didUpdateWidget');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,

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
