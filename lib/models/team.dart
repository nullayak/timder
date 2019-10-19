import 'package:timder/models/participant.dart';

class Team {
  List<Participant> participants = new List<Participant>();
  String teamName;
  bool isTeamFilled;
  Team({this.participants, this.teamName, this.isTeamFilled});
}
