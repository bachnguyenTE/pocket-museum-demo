import 'package:flutter/material.dart';
import 'package:pocketmuseumdemo/bottom_content.dart';
import 'package:pocketmuseumdemo/painting_title_text.dart';
import 'top_image_container.dart';
import 'painting_title_text.dart';

void main() => runApp(PocketMuseum());

class PocketMuseum extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFFB238),
        //scaffoldBackgroundColor: Color(0xfff7d13b), //Color(0xFFF19143),
      ),
      home: InfoPage(),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: TopImageContainer(
              image: AssetImage('images/MonaLisaDemo.jpg'),
              paintingTitleText: PaintingTitleText(
                artist: 'Leonardo da Vinci' + '\'s',
                paintingTitle: 'Mona Lisa',
                timePeriod: '1503-1506',
                medium: 'Oil on poplar panel',
              ),
            ),
          ),
          Expanded(
            child: BottomContent(
              description:
                  'The Mona Lisa is a half-length portrait painting by the Italian artist Leonardo da Vinci. It is considered an archetypal masterpiece of the Italian Renaissance, and has been described as \"the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world.\" The painting\'s novel qualities include the subject\'s expression, which is frequently described as enigmatic, the monumentality of the composition, the subtle modelling of forms, and the atmospheric illusionism.',
            ),
          ),
        ],
      ),
    );
  }
}
