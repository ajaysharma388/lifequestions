import 'package:flutter/material.dart';

import './advice.dart';

class Guru extends StatefulWidget {
  @override
  _GuruState createState() => _GuruState();
}

class _GuruState extends State<Guru> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 200,
                width: 250,
                margin: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: Image.asset('assets/images/bubble.png'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: 250,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Image.asset('assets/images/guru.png'),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Advice()));
              });
            },
            elevation: 10,
            color: Colors.white,
            child: Text(
              'Start Taking Advice',
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
    );
  }
}
