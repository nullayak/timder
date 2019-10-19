import 'package:timder/models/participant.dart';
import 'package:flutter/material.dart';

class Team {
  List<Participant> participants = new List<Participant>();
  String teamName;
  bool isTeamFilled;
  Team(
      {@required this.participants,
      @required this.teamName,
      @required this.isTeamFilled});
}
