import 'package:flutter/material.dart';

class TeaamPage extends StatefulWidget {
  TeaamPage({Key key}) : super(key: key);

  _TeaamPageState createState() => _TeaamPageState();
}

class _TeaamPageState extends State<TeaamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team Details"),
      ),
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
