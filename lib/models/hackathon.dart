import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class Hackathon {
  String date;
  String name;
  String duration;
  String startTime;
  String desc;
  String imageUrl;
  int maxTeamSize;
  int minTeamSize;
  int applications;

  Hackathon({
    @required this.applications,
    @required this.date,
    @required this.duration,
    @required this.maxTeamSize,
    @required this.minTeamSize,
    @required this.name,
    @required this.startTime,
    @required this.desc,
    @required this.imageUrl,
  });

  Hackathon.fromJSON(DocumentSnapshot snapshot) {
    this.date = snapshot["date"];
    this.name = snapshot["name"];
    this.duration = snapshot["duration"];
    this.startTime = snapshot["startTime"];
    this.maxTeamSize = snapshot["maxTeamSize"];
    this.minTeamSize = snapshot["minTeamSize"];
    this.applications = snapshot["applications"];
    this.desc = snapshot["desc"];
    this.imageUrl = snapshot["imageUrl"];
  }

  toJSON() {
    return {
      "date": this.date,
      "name": this.name,
      "duration": this.duration,
      "startTime": this.startTime,
      "maxTeamSize": this.maxTeamSize,
      "minTeamSize": this.minTeamSize,
      "applications": this.applications,
      "desc": this.desc,
      "imageUrl": this.imageUrl,
    };
  }
}
