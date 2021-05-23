import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindtricks/trick.dart';
import 'package:mindtricks/pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool press = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: press ? Colors.white : Color.fromRGBO(26, 28, 64, 1.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    press ? 'Dark Mode' : 'Light Mode',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        press = !press;
                      });
                    },
                    child: Icon(
                      press
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                      color: press ? Colors.white : Colors.black,
                    ),
                    backgroundColor: press ? Colors.black : Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  pinned: true,
                  iconTheme:
                      IconThemeData(color: press ? Colors.black : Colors.white),
                  expandedHeight: 300.0,
                  elevation: 0,
                  backgroundColor:
                      press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'Mind Tricks',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'KoHo',
                          color: press ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    centerTitle: true,
                    background:
                        Image(image: AssetImage('assets/homeimage.png')),
                  ),
                ),
                SliverGrid.count(
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page1(press: press)));
                      },
                      child: createWidgetmain(
                        context,
                        'Tricks',
                        'assets/trick.png',
                        press,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page2(press: press)));
                      },
                      child: createWidgetmain(
                          context, 'Stories', 'assets/story.png', press),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page3(press: press)));
                      },
                      child: createWidgetmain(
                          context, 'Illusions', 'assets/illu.png', press),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page4(press: press)));
                      },
                      child: createWidgetmain(
                          context, 'Riddles', 'assets/ridd.png', press),
                    ),
                  ],
                ),
                SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                          height: 30,
                          color: press ? Colors.black : Colors.white,
                        ),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  child: Text(
                                    'Trick Of The Week',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'KoHo',
                                      color:
                                          press ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Icon(
                                    Icons.book,
                                    color: press ? Colors.black : Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        createWidgetTrick(
                            context,
                            'Suss out the stalkers with a yawn',
                            'assets/sus.png',
                            press,
                            'If you see someone yawn, you will yawn. Sorry. That\'s just biology. So if you\'re getting the sense that someone cross the room is makin\' eyes at you, go ahead and yawn. If they yawn back, you know who they\'ve been looking at. And that means you\'ve got the advantage.'),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  child: Text(
                                    'Story Of The Week',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'KoHo',
                                      color:
                                          press ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Icon(
                                    Icons.lightbulb,
                                    color: press ? Colors.black : Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        createWidgetTrick(
                            context,
                            'Nova Effect',
                            'assets/nova.png',
                            press,
                            'The short tale “The Nova Effect” by The Pursuit of Wonder tells the story of a man named Eric who lost his dog Nova to a taunting rabbit while they were out walking. After a few days, a lovely woman named Vanessa brought Nova back. Eric and Vanessa fell for each other and eventually became a serious couple.\n\nWhile driving to pick up Vanessa one day, Eric got into a car accident. He was taken to the hospital and underwent a CT scan. The doctor told Eric that he did not suffer any injury from the crash, but they did find a small tumor in his brain. The tumor was in its very early stages and could be easily removed, yet without the accident and subsequent, Eric may have not known about the tumor until it was fatal.\n\nWhile Eric has had his share of bad luck (losing his dog, getting in an accident), he also enjoyed a great deal of good luck that came out of it (meeting his love, discovering a curable tumor), demonstrating the incredibly random nature of luck.'),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  child: Text(
                                    'illusion Of The Week',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'KoHo',
                                      color:
                                          press ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Icon(
                                    Icons.circle,
                                    color: press ? Colors.black : Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        createWidgetillusion(
                            context,
                            'The Spinning Dancer',
                            'assets/meercatorange.png',
                            'assets/dancer.gif',
                            press,
                            'The Spinning Dancer illusion depicts the silhouetted image of a dancer spinning in a circle, but what direction does she spin in? Some say clockwise, others say counterclockwise, and many have reported that the illusion actually changes direction. The reason is that without a proper reference point for depth, the brain is tricked by the figure\'s shape and orientation as it turns.'),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  child: Text(
                                    'Riddle Of The Week',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'KoHo',
                                      color:
                                          press ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Icon(
                                    Icons.question_answer,
                                    color: press ? Colors.black : Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        createWidgetTrick(
                            context,
                            'The World War',
                            'assets/ww1.png',
                            press,
                            'A man was telling some of his war stories to his grandchildren."When the World War I was on the verge of end, I was awarded for my bravery for I had saved a group of my men." He coughed and then added, "When we were fighting in northern France, an enemy soldier threw a grenade at us. Before it could explode, I picked it up and threw it away. For my act of bravery, right before the war ended, A General gave me a sword engraved with the words "Awarded for Display of Bravery and Heroism in World War 1".\n\n"Hearing this, one of the grandson spoke up. "Grandpa, this is not a true story. It can"t be true!\n\n"The truth is that it was not. How did the grand children know it?\n\n\nAnswer\nThe word "World War I" could not have been engraved on the sword. This is because the Second World War had not happened then and nobody knew that it will happen.'),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
    );
  }
}

Widget createWidgetTrick(BuildContext context, String text, String image,
    bool press, String maintext) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Ab(
                  textmain: maintext,
                  texthead: text,
                  image: image,
                  press: press)));
    },
    child: Container(
      margin: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 30),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: Image(image: AssetImage(image))))
        ],
      ),
      decoration: BoxDecoration(
          color: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: press
                  ? Colors.grey.shade500
                  : Color.fromRGBO(9, 12, 48, 1.0).withOpacity(0.3),
              offset: press ? Offset(0, 0) : Offset(4, 4),
              spreadRadius: press ? 3 : 0,
              blurRadius: press ? 12 : 4,
            ),
            BoxShadow(
              color: press
                  ? Colors.grey.shade100
                  : Color.fromRGBO(35, 38, 97, 1.0).withOpacity(0.5),
              offset: press ? Offset(0, 0) : Offset(-4, -4),
              spreadRadius: press ? 3 : 0,
              blurRadius: press ? 12 : 3,
            ),
          ]),
    ),
  );
}

Widget createWidgetillusion(BuildContext context, String text, String image,
    String imageillu, bool press, String maintext) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Ad(
                  textmain: maintext,
                  texthead: text,
                  image: image,
                  imageillu: imageillu,
                  press: press)));
    },
    child: Container(
      margin: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 30),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: Image(image: AssetImage(image))))
        ],
      ),
      decoration: BoxDecoration(
          color: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: press
                  ? Colors.grey.shade500
                  : Color.fromRGBO(9, 12, 48, 1.0).withOpacity(0.3),
              offset: press ? Offset(0, 0) : Offset(4, 4),
              spreadRadius: press ? 3 : 0,
              blurRadius: press ? 12 : 4,
            ),
            BoxShadow(
              color: press
                  ? Colors.grey.shade100
                  : Color.fromRGBO(35, 38, 97, 1.0).withOpacity(0.5),
              offset: press ? Offset(0, 0) : Offset(-4, -4),
              spreadRadius: press ? 3 : 0,
              blurRadius: press ? 12 : 3,
            ),
          ]),
    ),
  );
}

Widget createWidgetmain(
    BuildContext context, String text, String image, bool press) {
  return Container(
    margin: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 30),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'KoHo',
                    color: press ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 4,
            child: Center(
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: Image(image: AssetImage(image))),
            ))
      ],
    ),
    decoration: BoxDecoration(
        color: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: press
                ? Colors.grey.shade500
                : Color.fromRGBO(9, 12, 48, 1.0).withOpacity(0.3),
            offset: press ? Offset(0, 0) : Offset(4, 4),
            spreadRadius: press ? 2 : 0,
            blurRadius: press ? 2 : 4,
          ),
          BoxShadow(
            color: press
                ? Colors.grey.shade100
                : Color.fromRGBO(35, 38, 97, 1.0).withOpacity(0.5),
            offset: press ? Offset(0, 0) : Offset(-4, -4),
            spreadRadius: press ? 2 : 0,
            blurRadius: press ? 2 : 3,
          ),
        ]),
  );
}
