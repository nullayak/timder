import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:timder/models/hackathon.dart';

class HackathonScreen extends StatefulWidget {
  @override
  _HackathonScreenState createState() => _HackathonScreenState();
}

class _HackathonScreenState extends State<HackathonScreen> {
  List<Hackathon> hackathons;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("hackathons").getDocuments(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          } else {
            hackathons = List<Hackathon>(snapshot.data.documents.length);
            print(snapshot.data.documents);
            for (int i = 0; i < snapshot.data.documents.length; i++) {
              hackathons[i] = Hackathon.fromJSON(snapshot.data.documents[i]);
            }
            print(hackathons[0].toJSON());

            return SingleChildScrollView(
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceEvenly,
                  children: <Widget>[
                    cardBuilder(hackathon: hackathons[0]),
                    cardBuilder(hackathon: hackathons[0]),
                    cardBuilder(hackathon: hackathons[0]),
                    cardBuilder(hackathon: hackathons[0]),
                  ],
                ),
              ),
            );
          }
        }
      },
    );
  }

  Widget cardBuilder({@required Hackathon hackathon}) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/inout.png"),
              Text(
                "${hackathon.name}",
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 5),
              Text(
                "${hackathon.desc}",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
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
}
