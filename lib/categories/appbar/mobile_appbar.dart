import 'package:flutter/material.dart';
import 'package:webapp/utils/utalities.dart';
import 'package:webapp/widgets/custom_raised_Button.dart';

class MobileAppbar extends StatelessWidget {
  final Size screenSize;
  final Function(int index) onPress;
  final Function hirePressed;

  const MobileAppbar({
    this.screenSize,
    this.onPress,
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
            onPress: hirePressed,
            text: 'CONTACT ME',
            sel: 1,
          ),
        ),
        PopupMenuButton<Text>(
          // overflow menu
          onSelected: (value) {
            int index = menuItems.indexOf(value);
            onPress(index);
          },
          itemBuilder: (BuildContext context) {
            return menuItems.map<PopupMenuItem<Text>>((Text menuItem) {
              return PopupMenuItem<Text>(
                value: menuItem,
                child: menuItem,
              );
            }).toList();
          },
        ),
      ],
    );
  }
}
