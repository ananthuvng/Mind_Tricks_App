import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindtricks/home.dart';
import 'package:mindtricks/trick.dart';

class Page1 extends StatefulWidget {
  final bool press;
  Page1({Key? key, required this.press}) : super(key: key);
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    bool press = widget.press;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    ' Tricks',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                centerTitle: true,
                background: Image(image: AssetImage('assets/trickmain.png')),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Column(
                  children: [
                    SizedBox(height: 20),
                    createWidgetTrick(
                        context,
                        'Chew gum if you\'re nervous',
                        'assets/nervo.png',
                        press,
                        'You can trick your brain to reduce the nerves. Our brains are wired to believe that we are safe if we are eating. After all, cavemen wouldn\'t sit down to a meal if they were being chased by a bear. Don\'t chew gum during your interview or audition, but a piece of gum while you wait might help ease your anxiety.'),
                    createWidgetTrick(
                        context,
                        'Suss out the stalkers with a yawn',
                        'assets/sus.png',
                        press,
                        'If you see someone yawn, you will yawn. Sorry. That\'s just biology. So if you\'re getting the sense that someone cross the room is makin\' eyes at you, go ahead and yawn. If they yawn back, you know who they\'ve been looking at. And that means you\'ve got the advantage.'),
                    createWidgetTrick(
                        context,
                        'Animate your speaking',
                        'assets/samilepink.png',
                        press,
                        '“Subliminal: How Your Unconscious Mind Rules Your Behavior" author Leonard Mlodinow suggests that psychologically, people are more likely to believe that quicker speakers who talk loudly and expressively are clever and smart. So give talking with your hands a try.'),
                    createWidgetTrick(
                        context,
                        'Compliment everyone',
                        'assets/giftorange.png',
                        press,
                        'Obviously, people like to be complimented, so yes, tell whoever you\'re talking to that their shoes are working for you. But also? Research indicates that speaking positively of a third party makes you look confident. And that makes sense if you think about it in reverse — don\'t people seem super not confident when they trash other people?'),
                    createWidgetTrick(
                        context,
                        'Tell one secret',
                        'assets/ladderorange.png',
                        press,
                        'You build rapport and strengthen your relationship with people when you show them you trust them enough to hand off a secret. So think of one secret you can drop before meeting whoever it is you\'re trying to impress (the fact that your first kiss with your wife kinda sucked is usually a good one).'),
                    SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      backgroundColor: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
    );
  }
}

class Page2 extends StatefulWidget {
  final bool press;
  Page2({Key? key, required this.press}) : super(key: key);
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    bool press = widget.press;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    ' Stories',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                centerTitle: true,
                background: Image(image: AssetImage('assets/storymain.png')),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Column(
                  children: [
                    SizedBox(height: 20),
                    createWidgetTrick(
                        context,
                        'Nova Effect',
                        'assets/nova.png',
                        press,
                        'The short animated tale “The Nova Effect” by The Pursuit of Wonder tells the story of a man named Eric who lost his dog Nova to a taunting rabbit while they were out walking. After a few days, a lovely woman named Vanessa brought Nova back. Eric and Vanessa fell for each other and eventually became a serious couple.\n\nWhile driving to pick up Vanessa one day, Eric got into a car accident. He was taken to the hospital and underwent a CT scan. The doctor told Eric that he did not suffer any injury from the crash, but they did find a small tumor in his brain. The tumor was in its very early stages and could be easily removed, yet without the accident and subsequent, Eric may have not known about the tumor until it was fatal.\n\nWhile Eric has had his share of bad luck (losing his dog, getting in an accident), he also enjoyed a great deal of good luck that came out of it (meeting his love, discovering a curable tumor), demonstrating the incredibly random nature of luck.'),
                    SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      backgroundColor: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
    );
  }
}

class Page3 extends StatefulWidget {
  final bool press;
  Page3({Key? key, required this.press}) : super(key: key);
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    bool press = widget.press;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    '  Illusion',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                centerTitle: true,
                background: Image(image: AssetImage('assets/illumain.png')),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Column(
                  children: [
                    SizedBox(height: 20),
                    createWidgetillusion(
                        context,
                        'The Spinning Dancer',
                        'assets/meercatorange.png',
                        'assets/dancer.gif',
                        press,
                        'The Spinning Dancer illusion depicts the silhouetted image of a dancer spinning in a circle, but what direction does she spin in? Some say clockwise, others say counterclockwise, and many have reported that the illusion actually changes direction. The reason is that without a proper reference point for depth, the brain is tricked by the figure\'s shape and orientation as it turns.'),
                    createWidgetillusion(
                        context,
                        'The Ames Room Illusion',
                        'assets/room.png',
                        'assets/ames.jpg',
                        press,
                        'Would you be surprised to learn that the two people in the image at the left are actually the same size?'),
                    SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      backgroundColor: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
    );
  }
}

class Page4 extends StatefulWidget {
  final bool press;
  Page4({Key? key, required this.press}) : super(key: key);
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    bool press = widget.press;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    ' Riddles',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'KoHo',
                      color: press ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                centerTitle: true,
                background: Image(image: AssetImage('assets/riddmain.png')),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Column(
                  children: [
                    SizedBox(height: 20),
                    createWidgetTrick(
                        context,
                        'The World War',
                        'assets/ww1.png',
                        press,
                        'A man was telling some of his war stories to his grandchildren."When the World War I was on the verge of end, I was awarded for my bravery for I had saved a group of my men." He coughed and then added, "When we were fighting in northern France, an enemy soldier threw a grenade at us. Before it could explode, I picked it up and threw it away. For my act of bravery, right before the war ended, A General gave me a sword engraved with the words "Awarded for Display of Bravery and Heroism in World War 1".\n\n"Hearing this, one of the grandson spoke up. "Grandpa, this is not a true story. It can"t be true!\n\n"The truth is that it was not. How did the grand children know it?\n\n\nAnswer\nThe word "World War I" could not have been engraved on the sword. This is because the Second World War had not happened then and nobody knew that it will happen.'),
                    createWidgetTrick(
                        context,
                        'The Death',
                        'assets/death.png',
                        press,
                        'According to an old story , once there was a father and his three loving sons. One day dad met an serious accident , death approached to take the father. Oldest son beg to the death to allow his father to live for some more years. Death was kind and agreed.\n\nAfter 2 years death return to take the father with him , now the second son beg for some more time. Death agreed.After a year death returned again to take the father.Now the youngest son request to allow his father to live till the candle wick of the candle on his hand burned out.Death agreed.\n\nNow as the youngest son thought , the death never returned back.How come ?\n\n\nAnswer\nThe youngest son went over and blew out the candle after Death left because the son said \'till the candle wick burns out\', not \'till the candle burns out'),
                    SizedBox(height: 20),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
      backgroundColor: press ? Colors.white : Color.fromRGBO(24, 28, 74, 1.0),
    );
  }
}
