import 'package:timder/models/participant.dart';
import 'package:flutter/material.dart';

class Team {
  List<Participant> teamMembers = new List<Participant>();
  String teamName;
  int maxTeamSize;
  Team({
    @required this.teamMembers,
    @required this.teamName,
    @required this.maxTeamSize,
  });

  bool isTeamFull() {
    if (teamMembers.length < maxTeamSize) {
      return false;
    } else {
      return true;
    }
  }
}
