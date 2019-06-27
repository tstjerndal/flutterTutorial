import 'package:flutter/material.dart';
import './picture_control.dart';

class Pictures extends StatelessWidget{
  final List <String> pictures;

  Pictures([this.pictures = const []]){
    print ('Picture Widget Constructor');

  }
  
  @override
  Widget build(BuildContext context){
    print ('Picture Widget build');
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


