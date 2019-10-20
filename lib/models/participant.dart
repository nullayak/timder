import 'package:flutter/material.dart';

abstract class Participant {
  String name;
  String gender;
  String dob;
  String tshirtSize;
  bool isAdmin;
  bool isIndividual;
  bool design;
  bool frontend;
  bool backend;
  bool mobile;
  bool blockchain;
  List<String> skills = new List<String>();
  double rating;
  List<String> rightSwiped = new List<String>();
  List<String> rightSwipes = new List<String>();

  Participant({
    @required this.name,
    @required this.gender,
    @required this.dob,
    @required this.tshirtSize,
    @required this.isAdmin,
    @required this.skills,
    @required this.design,
    @required this.frontend,
    @required this.backend,
    @required this.mobile,
    @required this.blockchain,
    @required this.rating,
  });
}
