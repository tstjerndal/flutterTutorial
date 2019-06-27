import 'package:flutter/material.dart';


class PictureControl extends StatelessWidget {

  final Function addPicture;

  PictureControl(this.addPicture);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Theme.of(context).primaryColor,

      onPressed: () {
        addPicture('Sweet Louise');
      },
      child: Text('Add picture'),
    );
  }
}

