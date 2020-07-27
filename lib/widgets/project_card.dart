import 'package:flutter/material.dart';

import '../extensions/hover_extensions.dart';
import '../utils/utalities.dart';

class ProjectCard extends StatelessWidget {
  final double height;
  final double width;
  final String logo;
  final Function onTap;
  final bool onGooglePlay;

  const ProjectCard({
    @required this.height,
    @required this.width,
    @required this.logo,
    this.onTap,
    this.onGooglePlay = false,
  });

  @override
  Widget build(BuildContext context) {
    double widthh = this.width;
    double heightt = this.height;
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: widthh,
        height: heightt,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: Colors.black,
            style: BorderStyle.solid,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/${this.logo}/ps.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [
                    Colors.black54,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                ),
              ),
            ),
            onGooglePlay
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: widthh / 5,
                      height: heightt / 5,
                      child: Transform.rotate(
                        angle: 0.6,
                        child: Image.asset('images/google_play.png'),
                      ),
                    ),
                  )
                : Container(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  '${titles[this.logo]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (width / 25 > 50) ? 50 : width / 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}
