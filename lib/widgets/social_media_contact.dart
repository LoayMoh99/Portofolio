import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

import '../extensions/hover_extensions.dart';

class SocialMediaContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2 > 350)
          ? 350
          : MediaQuery.of(context).size.width / 2,
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Social Media Contact',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SocialMediaButton.linkedin(
                url: "https://www.linkedin.com/in/loay-mohamed-574464182/",
                size: 25,
                color: Colors.grey[600],
              ).moveUpOnHover,
              SocialMediaButton.facebook(
                url: "https://www.facebook.com/loay.mohamed.11.99",
                size: 25,
                color: Colors.grey[600],
              ).moveUpOnHover,
              SocialMediaButton.github(
                url: "https://github.com/LoayMoh99",
                size: 25,
                color: Colors.grey[600],
              ).moveUpOnHover,
            ],
          ),
        ],
      ),
    );
  }
}
