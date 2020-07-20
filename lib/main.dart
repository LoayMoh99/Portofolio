import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webapp/widgets/custom_raised_Button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {});
  }

  List<Text> menuItems = [
    Text(
      'Home',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Portofolio',
      style: TextStyle(color: Colors.blue),
    ),
    Text(
      'Contact Me',
      style: TextStyle(color: Colors.blue),
    ),
  ];

  Widget _expandedWidget() {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/images/code_land.jpg',
          fit: BoxFit.cover,
        ),
        Align(
          child: Padding(
            padding: EdgeInsets.only(left: (screenSize.width > 1000) ? 25 : 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "I am",
                  style: TextStyle(
                    fontSize: (screenSize.width > 1000) ? 70 : 30,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                RotateAnimatedTextKit(
                  duration: Duration(seconds: 2),
                  repeatForever: true,
                  onTap: () {},
                  text: [
                    "Loay Mohamed",
                    "Flutter Developer",
                    "Computer Engineer",
                    "Robofy's Co-Founder",
                  ],
                  textStyle: TextStyle(
                    fontSize: (screenSize.width > 1000) ? 70 : 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: (screenSize.width > 1000) ? 25 : 10,
          bottom: (screenSize.width > 1000) ? 25 : 10,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue[900],
              expandedHeight: screenSize.height / 2,
              flexibleSpace: FlexibleSpaceBar(
                background: _expandedWidget(),
              ),
              pinned: true,
              title: Text(
                'Loay Mohamed',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: (screenSize.width < 1000)
                  ? <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomRoundButton(
                          onPress: () {},
                          text: 'HIRE ME',
                          sel: 1,
                        ),
                      ),
                      PopupMenuButton<Text>(
                        // overflow menu
                        onSelected: null,
                        itemBuilder: (BuildContext context) {
                          return menuItems
                              .map<PopupMenuItem<Text>>((Text menuItem) {
                            return PopupMenuItem<Text>(
                              value: menuItem,
                              child: menuItem,
                            );
                          }).toList();
                        },
                      ),
                    ]
                  : <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomRoundButton(
                          onPress: () {},
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
                          onPress: () {},
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
                          onPress: () {},
                          text: 'Contact Me',
                          sel: 0,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CustomRoundButton(
                          onPress: () {},
                          text: 'HIRE ME',
                          sel: 1,
                        ),
                      ),
                    ],
            ),
            //body
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: 100,
                  color: Colors.white,
                  child: Text('Child $index'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
