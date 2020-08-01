import 'package:flutter/material.dart';
import 'package:webapp/utils/goToGitHubURL.dart';

class GitHub extends StatelessWidget {
  final double width;

  const GitHub({this.width});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        width: width,
        padding: EdgeInsets.all(15),
        child: RaisedButton(
          onPressed: () => onProjectTap('https://github.com/LoayMoh99'),
          color: Theme.of(context).accentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Text(
            'See More on My GitHub..',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
