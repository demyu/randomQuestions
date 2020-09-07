import 'package:flutter/material.dart';
import './questions.dart';

class Result extends StatefulWidget {
  
  Questions questions;

  Result({this.questions});

  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  
  @override
  Widget build(BuildContext context) {
    
    String result = "";

    widget.questions.removeLast();
    return Scaffold(
      appBar: AppBar(
        title: Text("Score"),
      ),
      body: Center(
        child: Text(widget.questions.getTotalScore().toString() + "/" + "10", style: TextStyle(fontSize: 30),
        )
        ),
      
    );
  }
}