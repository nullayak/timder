import 'package:flutter/material.dart';

class Hackathon extends StatefulWidget {
  @override
  _HackathonState createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {
  Widget cardbuilder() {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(3),
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
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        onTap: () {},
        splashColor: Colors.redAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            cardbuilder(),
            cardbuilder(),
            cardbuilder(),
            cardbuilder(),
          ],
        ),
      ),
    );
  }
}
