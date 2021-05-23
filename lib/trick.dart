import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindtricks/home.dart';

class Press extends StatefulWidget {
  final bool dark;
  Press({Key? key, required this.dark}) : super(key: key);
  @override
  _PressState createState() => _PressState();
}

class _PressState extends State<Press> {
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: () {
            setState(() {
              _hasBeenPressed = !_hasBeenPressed;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: widget.dark
                ? (_hasBeenPressed ? Colors.pink : Colors.black)
                : (_hasBeenPressed ? Colors.pink : Colors.white),
          )),
    );
  }
}

Widget Trick(String text, String image, String mate, bool dark) {
  return Scaffold(
    appBar: AppBar(
      iconTheme: IconThemeData(
        color: dark ? Colors.black : Colors.white,
      ),
      elevation: 0,
      backgroundColor: dark ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
      actions: <Widget>[
        Press(
          dark: dark,
        ),
      ],
    ),
    body: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Column(
              children: [
                Center(
                    child: Container(
                        height: 250,
                        margin: EdgeInsets.all(50),
                        child: Image(image: AssetImage(image)))),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'KoHo',
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  color: dark ? Colors.black : Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: Text(
                    mate,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ]),
        )
      ],
    ),
    backgroundColor: dark ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
  );
}

Widget illusion(
    String text, String image, String mate, String imageillusion, bool dark) {
  return Scaffold(
    appBar: AppBar(
      iconTheme: IconThemeData(
        color: dark ? Colors.black : Colors.white,
      ),
      elevation: 0,
      backgroundColor: dark ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
      actions: <Widget>[
        Press(
          dark: dark,
        ),
      ],
    ),
    body: CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Column(
              children: [
                Center(
                    child: Container(
                        margin: EdgeInsets.all(50),
                        child: Image(image: AssetImage(imageillusion)))),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  color: dark ? Colors.black : Colors.white,
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: Text(
                    mate,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: dark ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ]),
        )
      ],
    ),
    backgroundColor: dark ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
  );
}

class Ab extends StatefulWidget {
  final String textmain;
  final String texthead;
  final String image;
  final bool press;
  Ab(
      {Key? key,
      required this.textmain,
      required this.texthead,
      required this.image,
      required this.press})
      : super(key: key);
  @override
  _AbState createState() => _AbState();
}

class _AbState extends State<Ab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child:
          Trick(widget.texthead, widget.image, widget.textmain, widget.press),
    ));
  }
}

class Ad extends StatefulWidget {
  final String textmain;
  final String texthead;
  final String image;
  final String imageillu;
  final bool press;
  Ad(
      {Key? key,
      required this.textmain,
      required this.texthead,
      required this.image,
      required this.imageillu,
      required this.press})
      : super(key: key);
  @override
  _AdState createState() => _AdState();
}

class _AdState extends State<Ad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: illusion(widget.texthead, widget.image, widget.textmain,
          widget.imageillu, widget.press),
    ));
  }
}
