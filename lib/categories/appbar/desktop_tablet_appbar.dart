import 'package:flutter/material.dart';
import 'package:webapp/utils/utalities.dart';
import 'package:webapp/widgets/custom_raised_Button.dart';

class DesktopTabletAppbar extends StatelessWidget {
  final Size screenSize;
  final Function homePressed;
  final Function aboutPressed;
  final Function portofolioPressed;
  final Function hirePressed;

  const DesktopTabletAppbar({
    this.screenSize,
    this.homePressed,
    this.aboutPressed,
    this.portofolioPressed,
    this.hirePressed,
  });
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue[900],
      expandedHeight: screenSize.height,
      flexibleSpace: FlexibleSpaceBar(
        background: expandedWidget(context),
      ),
      pinned: true,
      title: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Loay Mohamed',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRoundButton(
            onPress: homePressed,
            text: 'Home',
            sel: 0,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRoundButton(
            onPress: aboutPressed,
            text: 'About Me',
            sel: 0,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRoundButton(
            onPress: portofolioPressed,
            text: 'Portofolio',
            sel: 0,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRoundButton(
            onPress: hirePressed,
            text: 'CONTACT ME',
            sel: 1,
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
