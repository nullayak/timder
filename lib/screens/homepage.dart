import 'package:flutter/material.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:timder/screens/firstScreen.dart';
import 'package:timder/screens/hackathons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currrentIndex = 0;

  List<Widget> _displayWidgets = <Widget>[
    FirstScreen(),
    Hackathon(),
  ];

  @override
  Widget build(BuildContext context) {
    return TimderScaffold(
      title: "Home page",
      body: _displayWidgets.elementAt(currrentIndex),
      bottomWidget: BottomNavigationBar(
        currentIndex: currrentIndex,
        onTap: (index) {
          updateIndex(index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop),
            title: Text("Hackathons"),
          ),
        ],
      ),
    );
  }

  void updateIndex(int index) {
    switch (index) {
      case 0:
        setState(() {
          currrentIndex = 0;
        });
        break;
      case 1:
        setState(() {
          currrentIndex = 1;
        });
        break;
      default:
    }
  }
}
