import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

   @override
  _DicePageStateChange createState() => _DicePageStateChange();
  
}
class _DicePageStateChange extends State<DicePage>{
    int leftnumber = 1;
    int rightnumber = 1;
    void changeDiceFace() {
      setState(() {
        leftnumber = Random().nextInt(6) + 1;
        rightnumber = Random().nextInt(6) + 1;
    });
     }
    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                   },
                child: Image.asset('images/dice $leftnumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                    changeDiceFace();
                },
                child: Image.asset('images/dice $rightnumber.png'),
              ),
            ),
          ],
        ),
      );
    }
  }

