import 'package:timder/models/participant.dart';

class Professional extends Participant {
  String company;
  double experience;
  String role;
  Professional({this.experience, this.company, this.role});
}
