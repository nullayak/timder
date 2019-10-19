import 'package:flutter/material.dart';
import 'package:timder/models/participant.dart';

class Students extends Participant {
  String institute;
  String graduationYear;
  String stream;
  Students({
    @required this.graduationYear,
    @required this.institute,
    @required this.stream,
  });
}
