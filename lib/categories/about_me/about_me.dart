import 'package:flutter/material.dart';
import 'package:webapp/utils/skills.dart';
import 'package:webapp/utils/utalities.dart';
import 'package:webapp/widgets/portofolio_text.dart';

class AboutMeMobile extends StatelessWidget {
  final Size screenSize;

  const AboutMeMobile({this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PortofolioText(
                screenSize: screenSize,
                text: 'About Me',
              ),
              Container(
                padding: EdgeInsets.fromLTRB(8, 20, 8, 20),
                width: screenSize.width * 0.6,
                height: screenSize.height * 0.6,
                child: Center(
                  child: Image.asset(
                    'images/loay.png',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: aboutMe),
                      ],
                    ),
                  ),
                ),
              ),
              Skills(
                screenSize: screenSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
