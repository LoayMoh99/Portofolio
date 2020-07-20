import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "I am",
            style: TextStyle(fontSize: 25.0),
          ),
          RotateAnimatedTextKit(
              onTap: () {},
              text: ["AWESOME", "OPTIMISTIC", "DIFFERENT"],
              textStyle: TextStyle(fontSize: 20.0, color: Colors.blueAccent),
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart // or Alignment.topLeft
              ),
        ],
      ),
    );
  }
}
