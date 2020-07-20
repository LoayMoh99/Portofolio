import 'package:flutter/material.dart';
import 'package:webapp/pages/landing_page.dart';
import 'package:webapp/widgets/custom_raised_Button.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Text> menuItems = [
    Text(
      'Home',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Portofolio',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Contact Me',
      style: TextStyle(color: Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Loay Mohamed',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomRoundButton(
              onPress: () {},
              text: 'HIRE ME',
              sel: 1,
            ),
          ),
          PopupMenuButton<Text>(
            // overflow menu
            onSelected: null,
            itemBuilder: (BuildContext context) {
              return menuItems.map<PopupMenuItem<Text>>((Text menuItem) {
                return PopupMenuItem<Text>(
                  value: menuItem,
                  child: menuItem,
                );
              }).toList();
            },
          ),
        ],
      ),
      body: LandingPage(),
    );
  }
}
