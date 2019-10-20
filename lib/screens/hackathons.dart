import 'package:flutter/material.dart';

class Hackathon extends StatefulWidget {
  @override
  _HackathonState createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/tinder.png")
    );
  }
}
