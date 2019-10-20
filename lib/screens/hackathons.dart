import 'package:flutter/material.dart';

class Hackathon extends StatefulWidget {
  @override
  _HackathonState createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {
  Widget cardbuilder() {
    return Card(
      shape: RoundedRectangleBorder(),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0, 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/inout.png"),
              Text(
                "InOut6.0",
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.98,
        ),
        onTap: () {},
        splashColor: Colors.redAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          cardbuilder(),
        ],
      )),
    );
  }
}
