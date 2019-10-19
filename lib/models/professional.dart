import 'package:flutter/material.dart';
import 'package:timder/models/participant.dart';

class Professional extends Participant {
  String company;
  double experience;
  String role;
  Professional({
    @required this.experience,
    @required this.company,
    @required this.role,
  });
}
