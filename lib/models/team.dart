import 'package:flutter/material.dart';

<<<<<<< HEAD
class Team<T> {
  List<T> teamMembers = new List<T>();
=======
class Team {
  List<Participant> teamMembers = new List<Participant>();
>>>>>>> cff592bbc832af1081e42afc70111150dd4475af
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
