import 'package:flutter/material.dart';

import '../../utils/utalities.dart';
import '../../widgets/portofolio_text.dart';
import '../../widgets/project_card.dart';
import '../../widgets/project_dialog.dart';
import '../about_me/about_me.dart';
import '../hire_me/hire_me_mobile.dart';

class MobileLanding extends StatefulWidget {
  final Size screenSize;
  const MobileLanding({this.screenSize});

  @override
  _MobileLandingState createState() => _MobileLandingState();
}

class _MobileLandingState extends State<MobileLanding> {
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
          AboutMeMobile(
            screenSize: widget.screenSize,
          ),
          PortofolioText(
            text: 'Portofolio',
            screenSize: widget.screenSize,
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: ProjectCard(
                onTap: () => _openDialog(0),
                height: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                width: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                logo: logos[0],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: ProjectCard(
                onTap: () => _openDialog(1),
                height: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                width: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                logo: logos[1],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: ProjectCard(
                onTap: () => _openDialog(2),
                height: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                width: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                logo: logos[2],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Center(
              child: ProjectCard(
                onTap: () => _openDialog(3),
                height: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                width: (widget.screenSize.width > 600)
                    ? 400
                    : widget.screenSize.width * 0.7,
                logo: logos[3],
              ),
            ),
          ),
          HireMeMobile(
            screenSize: widget.screenSize,
          ),
        ],
      ),
    );
  }
}
