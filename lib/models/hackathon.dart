import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class Hackathon {
  String date;
  String name;
  String duration;
  String startTime;
  int maxTeamSize;
  int minTeamSize;
  int application;

  Hackathon({
    @required this.application,
    @required this.date,
    @required this.duration,
    @required this.maxTeamSize,
    @required this.minTeamSize,
  });

  Hackathon.fromJSON(DocumentSnapshot snapshot) {
    this.date = snapshot["date"];
    this.name = snapshot["name"];
    this.duration = snapshot["duration"];
    this.startTime = snapshot["startTime"];
    this.maxTeamSize = snapshot["maxTeamSize"];
    this.minTeamSize = snapshot["minTeamSize"];
    this.application = snapshot["application"];
  }
}
