import 'package:flutter/material.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:timder/models/hackathon.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            child: Text("Create Team"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Join Team"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("Apply Individually"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
