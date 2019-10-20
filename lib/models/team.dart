import 'package:flutter/material.dart';

class Team<T> {
  List<T> teamMembers = new List<T>();
  List<T> participants = new List<T>();
  String teamName;
  int maxTeamSize;
  String joiningCode = "";
  // Team({
  //   @required this.teamMembers,
  //   @required this.teamName,
  //   @required this.maxTeamSize,
  // });
  Team({
    @required this.maxTeamSize,
    @required this.teamMembers,
    @required this.participants,
    @required this.teamName,
  }) {
    joiningCode = teamName;
  }

  bool isTeamFull() {
    if (teamMembers.length < maxTeamSize) {
      return false;
    } else {
      return true;
    }
  }
}
