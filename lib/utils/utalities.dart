import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:webapp/extensions/hover_extensions.dart';
import 'package:webapp/utils/project_info.dart';

String aboutMe = 'I am a Flutter Developer and Android Developer(Java).\n' +
    'Also I am a Computer Engineering Student at Cairo University.\n' +
    'Also I am the Co-Founder of Robofy; the first Robotics Club at Fayoum.\n' +
    'I am the Champion & Egypt\'s representative of FLL at Saint Louis,USA 2016.\n' +
    'I am a Fast Learner and have the passion to know more about new \n' +
    'technologies and how hardware and software interacts.';

Widget expandedWidget(context) {
  final screenSize = MediaQuery.of(context).size;
  return Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image.asset(
        'assets/images/code_land.jpg',
        fit: BoxFit.fill,
      ),
      Align(
        child: Padding(
          padding: EdgeInsets.only(left: screenSize.width / 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "I am",
                style: TextStyle(
                  fontSize: screenSize.width / 15,
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              RotateAnimatedTextKit(
                duration: Duration(seconds: 2),
                repeatForever: true,
                onTap: () {},
                text: [
                  "Loay Mohamed",
                  "a Flutter Developer",
                  "a Computer Engineer",
                  "Robofy's Co-Founder",
                ],
                textStyle: TextStyle(
                  fontSize: screenSize.width / 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: screenSize.width / 50,
        bottom: screenSize.width / 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Social Media:',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: (screenSize.width > 1000) ? 30 : 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SocialMediaButton.linkedin(
              url: "https://www.linkedin.com/in/loay-mohamed-574464182/",
              size: (screenSize.width > 1000) ? 35 : 25,
              color: Colors.white,
            ).moveUpOnHover,
            SizedBox(
              height: 10,
            ),
            SocialMediaButton.facebook(
              url: "https://www.facebook.com/loay.mohamed.11.99",
              size: (screenSize.width > 1000) ? 35 : 25,
              color: Colors.white,
            ).moveUpOnHover,
            SizedBox(
              height: 10,
            ),
            SocialMediaButton.github(
              url: "https://github.com/LoayMoh99",
              size: (screenSize.width > 1000) ? 35 : 25,
              color: Colors.white,
            ).moveUpOnHover.showCursorOnHover,
          ],
        ),
      ),
    ],
  );
}

List<Text> menuItems = [
  Text(
    'Home',
    style: TextStyle(color: Colors.blue),
  ),
  Text(
    'About Me',
    style: TextStyle(color: Colors.blue),
  ),
  Text(
    'Portofolio',
    style: TextStyle(color: Colors.blue),
  ),
];

var logos = ['gpa', 'snake', 'fit', 'chat'];

Map titles = {
  'gpa': 'GPA Calculator',
  'snake': "Snake Game",
  'fit': "Fitness App",
  'chat': "LoA'a Chat UI",
};

ProjectInfo gpaCalc = new ProjectInfo(
  logo: 'gpa',
  title: 'GPA Calculator',
  madeBy: 'Flutter',
  githubLink: 'https://github.com/LoayMoh99/GPA-Calculator',
  noPhotos: 5,
);

ProjectInfo snakeGame = new ProjectInfo(
  logo: 'snake',
  title: 'Snake Game',
  madeBy: 'Flutter',
  githubLink: 'https://github.com/LoayMoh99/Snake-Game',
  noPhotos: 3,
);

ProjectInfo fitApp = new ProjectInfo(
  logo: 'fit',
  title: "Fitness App",
  madeBy: 'Flutter',
  githubLink: 'https://github.com/LoayMoh99/Fitness-App',
  noPhotos: 3,
);

ProjectInfo chatUI = new ProjectInfo(
  logo: 'chat',
  title: "LoA'a Chat UI",
  madeBy: 'Flutter',
  githubLink: 'https://github.com/LoayMoh99/Flutter-Chat-LMHM',
  noPhotos: 6,
);
var projects = [
  gpaCalc,
  snakeGame,
  fitApp,
  chatUI,
];
