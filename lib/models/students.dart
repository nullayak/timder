import 'package:timder/models/participant.dart';

class Students extends Participant {
  String institute;
  String graduationYear;
  String stream;
  Students({this.graduationYear, this.institute, this.stream});
}
