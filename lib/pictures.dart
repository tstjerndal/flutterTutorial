import 'package:flutter/material.dart';

class Pictures extends StatelessWidget{
  final List <String> pictures;

  Pictures(this.pictures);
  
  @override
  Widget build(BuildContext context){
    return Column(
      children: pictures
          .map(
            (element) => Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/Louise.jpg'),
              Text(element)
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}


