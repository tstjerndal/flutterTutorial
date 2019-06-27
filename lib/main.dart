import 'package:flutter/material.dart';
/* for debug UI
import 'package:flutter/rendering.dart';
*/
import './picture_manager.dart';

void main() => runApp(MyApp());

/* for debug UI
void main() {
  debugPaintSizeEnabled= true;
  runApp(MyApp();

}
*/
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
        home: Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: PictureManager(startingPicture: 'Picture Tester'),
        ),
    );

  }
}