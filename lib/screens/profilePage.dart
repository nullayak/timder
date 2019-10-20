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

  Widget chipBuilder(String speciality) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ChoiceChip(
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$speciality",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        selected: true,
        padding: const EdgeInsets.all(2.0),
      ),
    );
  }

  List<Widget> studentInfo(String institute, String stream, String year) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Institute Name: \n$institute",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Graduation Year: \n$year",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Stream: \n$stream",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    ];
  }

  List<Widget> professionalInfo(
      String company, String role, String experience) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Company Name: \n$company",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Experience: \n$experience",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Role: \n$role",
          softWrap: true,
          style: TextStyle(
            fontSize: 25,
          ),
          textAlign: TextAlign.start,
        ),
      ),
    ];
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Pushkar Patel",
              softWrap: true,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                chipBuilder("Front-End"),
                chipBuilder("Back-End"),
                chipBuilder("Designer"),
                chipBuilder("Mobile"),
                chipBuilder("Block Chain"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Gender, Age :\nM, 19",
              softWrap: true,
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "T-shirt Size: \nM",
              softWrap: true,
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: studentInfo("IIIT Vadodara", "Computer Science", "2022"),
          ),
        ],
      ),
    ));
  }
}
