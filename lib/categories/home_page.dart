import 'package:flutter/material.dart';

import '../categories/appbar/desktop_tablet_appbar.dart';
import '../categories/appbar/mobile_appbar.dart';
import '../categories/landing/desktop_landing.dart';
import '../categories/landing/mobile_landing.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  int scrollValue;
  bool fabVisiblity = false;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(changeSelector);
  }

  changeSelector() {
    scrollValue = scrollController.offset.round();
    //print(scrollValue);
    if (scrollValue > 300) {
      setState(() {
        fabVisiblity = true;
      });
    } else {
      setState(() {
        fabVisiblity = false;
      });
    }
  }

  homePressed() {
    scrollController.animateTo(
      0,
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.minWidth < 1000 && constraints.maxWidth < 1000) {
              return CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  MobileAppbar(
                    screenSize: screenSize,
                    onPress: (index) {
                      if (index == 0) {
                        homePressed();
                      } else if (index == 1) {
                        scrollController.animateTo(
                          570,
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 400),
                        );
                      } else {
                        scrollController.animateTo(
                          1675,
                          curve: Curves.easeIn,
                          duration: Duration(milliseconds: 400),
                        );
                      }
                    },
                    hirePressed: () {
                      scrollController.animateTo(
                        3500,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 400),
                      );
                    },
                  ),
                  MobileLanding(
                    screenSize: screenSize,
                  ),
                ],
              );
            } else {
              return CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  DesktopTabletAppbar(
                    screenSize: screenSize,
                    homePressed: () => homePressed(),
                    aboutPressed: () {
                      scrollController.animateTo(
                        610,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 300),
                      );
                    },
                    portofolioPressed: () {
                      scrollController.animateTo(
                        1150,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 300),
                      );
                    },
                    hirePressed: () {
                      scrollController.animateTo(
                        2375,
                        curve: Curves.easeIn,
                        duration: Duration(milliseconds: 300),
                      );
                    },
                  ),
                  DesktopLanding(
                    screenSize: screenSize,
                  ),
                ],
              );
            }
          },
        ),
      ),
      floatingActionButton: Visibility(
        visible: fabVisiblity,
        child: FloatingActionButton(
          onPressed: () => homePressed(),
          child: Icon(Icons.arrow_drop_up),
        ),
      ),
    );
  }
}
