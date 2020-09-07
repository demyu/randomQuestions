import 'package:flutter/material.dart';
import 'HomeScreen.dart';
void main() {
  runApp(randomQuestion());
}


class randomQuestion extends StatefulWidget{


  _randomQuestionState createState() => _randomQuestionState();
}

class _randomQuestionState extends State<randomQuestion>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Random Question",
      home: HomeScreen()
    );
  }
}
