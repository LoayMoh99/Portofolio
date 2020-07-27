import 'package:flutter/material.dart';
import 'package:webapp/widgets/direct_contacts.dart';
import 'package:webapp/widgets/social_media_contact.dart';
import 'package:webapp/widgets/portofolio_text.dart';

class HireMeMobile extends StatelessWidget {
  final Size screenSize;

  const HireMeMobile({this.screenSize});
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
              DirectContact(
                width: screenSize.width,
              ),
              SizedBox(
                height: 20,
              ),
              SocialMediaContact(),
              SizedBox(
                height: 20,
              ),

              //SendMeMsg(),
            ],
          ),
        ),
      ),
    );
  }
}
