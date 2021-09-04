import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  @override

  var dice1=1,dice2=1;
  Widget build(BuildContext context) {

    randomNumbergenerator(min, max){
      var rn = new Random();
      return min+ rn.nextInt(max-min);
    }


    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    dice1 = randomNumbergenerator(1, 6);
                  });
                  print('left button got pressed');
                },
                child: Image(
                  image: AssetImage('images/dice$dice1.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    dice2 = randomNumbergenerator(1, 6);
                  });
                  print('right button got pressed');
                },
                child: Image(
                  image: AssetImage('images/dice$dice2.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


