import 'dart:math';

import 'package:flutter/material.dart';

class Advice extends StatefulWidget {
  @override
  _AdviceState createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {
  int ball = 0;
  var rnd = new Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text(
          'Ask The Guru',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Pacifico',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Text(
                "Ask Your Question's ?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('assets/images/ball$ball.png'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  ball = rnd.nextInt(5) + 1;
                });
              },
              elevation: 10,
              color: Colors.white,
              child: Text(
                "Get Answer Vat's",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
