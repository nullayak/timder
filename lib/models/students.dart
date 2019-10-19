import 'package:flutter/material.dart';
import 'package:timder/models/participant.dart';

class Students extends Participant {
  String institute;
<<<<<<< HEAD
  int graduationYear;
=======
  String graduationYear;
>>>>>>> 8b4cc6387f5ebed00b46c1bc7daff0c47c14e7da
  String stream;
  Students({
    @required this.graduationYear,
    @required this.institute,
    @required this.stream,
  });
}
