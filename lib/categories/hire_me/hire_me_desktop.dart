import 'package:flutter/material.dart';
import 'package:webapp/widgets/direct_contacts.dart';
import 'package:webapp/widgets/social_media_contact.dart';
import 'package:webapp/widgets/portofolio_text.dart';

class HireMeDesktop extends StatelessWidget {
  final Size screenSize;

  const HireMeDesktop({this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: [
              PortofolioText(
                screenSize: screenSize,
                text: 'Contact Me',
              ),
              Row(
                children: [
                  DirectContact(
                    width: screenSize.width * 0.4,
                  ),
                  SocialMediaContact(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
