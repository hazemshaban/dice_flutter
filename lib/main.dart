import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body:DicePage() ,
      ),

    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice=5;
  int rightDice=4;
  void ChangeDiceNumber(){
    setState(() {
      leftDice=Random().nextInt(6)+1;
      rightDice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            flex:1 ,
            child:FlatButton(
              onPressed:ChangeDiceNumber,
              child: Image.asset('images/dice$leftDice.png',),
            ),
          ),

          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: ChangeDiceNumber,
            )
            ,),
        ],

      ),
    );
  }
}
