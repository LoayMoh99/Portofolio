import 'package:flutter/material.dart';

class PortofolioText extends StatelessWidget {
  final Size screenSize;
  final String text;
  const PortofolioText({this.screenSize, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blue[900],
            fontWeight: FontWeight.bold,
            fontSize: (screenSize.width / 15 > 70) ? 70 : screenSize.width / 15,
            fontFamily: 'Ewert',
            decoration: TextDecoration.none,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
