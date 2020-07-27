import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final Size screenSize;

  const Skills({this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.8,
      height: screenSize.height * 0.8,
      child: Image.asset('images/skills.png'),
    );
  }
}
