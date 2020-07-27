import 'package:flutter/material.dart';
import 'package:webapp/utils/skills.dart';
import 'package:webapp/utils/utalities.dart';
import 'package:webapp/widgets/portofolio_text.dart';

class AboutMeDesktop extends StatelessWidget {
  final Size screenSize;

  const AboutMeDesktop({this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PortofolioText(
                screenSize: screenSize,
                text: 'About Me',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        width: screenSize.width * 0.35,
                        height: screenSize.height * 0.35,
                        child: Center(
                          child: Image.asset(
                            'images/loay.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.07,
                      ),
                      Align(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 40, 0),
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
                      SizedBox(
                        height: screenSize.height * 0.07,
                      ),
                    ],
                  ),
                  Skills(
                    screenSize: screenSize / 2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
