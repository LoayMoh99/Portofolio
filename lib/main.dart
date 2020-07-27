import 'package:flutter/material.dart';

import 'categories/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: HomePage(),
    );
  }
}
