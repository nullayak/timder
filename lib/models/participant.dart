import 'package:flutter/widgets.dart';

class Participant {
  String name;
  String gender;
  String dob;
  String tshirt;
  bool isAdmin;
  List skills = new List();
  bool design;
  bool frontend;
  bool backend;
  bool mobile;
  bool blockchain;
  Participant({
    @required this.name,
    @required this.gender,
    @required this.dob,
    @required this.tshirt,
    @required this.isAdmin,
    @required this.skills,
    @required this.design,
    @required this.frontend,
    @required this.backend,
    @required this.mobile,
    @required this.blockchain,
  });
}
