import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mindtricks/home.dart';

class Ss extends StatefulWidget {
  @override
  _SsState createState() => _SsState();
}

class _SsState extends State<Ss> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color.fromRGBO(24, 28, 74, 1.0)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('assets/log.gif'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Mind Tricks",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'KoHo',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Text("Let's hack in to the",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                    Text("BRAIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
