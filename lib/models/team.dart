import 'package:flutter/material.dart';

class Team<T> {
  List<T> teamMembers = new List<T>();
  String teamName;
  int maxTeamSize;
  List<T> participants = new List<T>();
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
