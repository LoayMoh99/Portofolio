import 'package:flutter/material.dart';

import '../../utils/utalities.dart';
import '../../widgets/portofolio_text.dart';
import '../../widgets/project_card.dart';
import '../../widgets/project_dialog.dart';
import '../about_me/about_me_desktop.dart';
import '../hire_me/hire_me_desktop.dart';

class DesktopLanding extends StatefulWidget {
  final Size screenSize;
  const DesktopLanding({this.screenSize});

  @override
  _DesktopLandingState createState() => _DesktopLandingState();
}

class _DesktopLandingState extends State<DesktopLanding> {
  _openDialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return ProjectDialog(index);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[
          AboutMeDesktop(
            screenSize: widget.screenSize,
          ),
          PortofolioText(
            text: 'Portofolio',
            screenSize: widget.screenSize,
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ProjectCard(
                  onTap: () => _openDialog(0),
                  height: widget.screenSize.width * 0.7 / 2,
                  width: widget.screenSize.width * 0.7 / 2,
                  logo: logos[0],
                ),
                ProjectCard(
                  onTap: () => _openDialog(1),
                  height: widget.screenSize.width * 0.7 / 2,
                  width: widget.screenSize.width * 0.7 / 2,
                  logo: logos[1],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ProjectCard(
                  onTap: () => _openDialog(2),
                  height: widget.screenSize.width * 0.7 / 2,
                  width: widget.screenSize.width * 0.7 / 2,
                  logo: logos[2],
                ),
                ProjectCard(
                  onTap: () => _openDialog(3),
                  height: widget.screenSize.width * 0.7 / 2,
                  width: widget.screenSize.width * 0.7 / 2,
                  logo: logos[3],
                ),
              ],
            ),
          ),
          HireMeDesktop(
            screenSize: widget.screenSize,
          ),
        ],
      ),
    );
  }
}
