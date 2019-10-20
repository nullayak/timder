import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> cards = new List<Widget>();
  List<Widget> arrayCardBuilder() {
    for (int i = 0; i < 4; i++) {
      cards[i] = cardBuilder("");
    }
    return cards;
  }

  Widget cardBuilder(String skill) {
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
              Image.asset("assets/$skill.png"),
              Text(
                skill,
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
    return Container(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                cardBuilder("angular"),
                cardBuilder("cpp"),
                cardBuilder("firebase"),
                cardBuilder("flutter"),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
