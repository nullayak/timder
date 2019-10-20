import 'package:flutter/material.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:timder/models/hackathon.dart';
import 'package:timder/screens/timderSwipe.dart';

class TeamPage extends StatefulWidget {
  final Hackathon hackathon;

  TeamPage({@required this.hackathon});

  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return TimderScaffold(
      showNotificationIcon: true,
      title: "Team Details",
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Join a Team"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Look for Teammates"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return TimderSwipe();
                    },
                  ),
                );
              },
            ),
            FlatButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Create your own Team"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
