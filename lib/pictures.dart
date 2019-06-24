import 'package:flutter/material.dart';
class Pictures extends StatelessElement{
  List <String> pictures;
  Pictures(pictures)
  
  @override
  Widget build(BuildContext context){
    return Column(
      children: _pictures
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
    )
  }
}


