import 'package:flutter/material.dart';

class Participant {
  String email;
  String photoUrl;
  String uid;
  String displayName;
  String name;
  String gender;
  String dob;
  String tshirtSize;
  String bio;
  bool isAdmin;
  bool isIndividual;
  bool design;
  bool frontend;
  bool backend;
  bool mobile;
  bool blockchain;
  String institute;
  int graduationYear;
  String stream;
  String company;
  double experience;
  String role;
  double rating;
  List<String> rightSwiped = new List<String>();
  List<String> rightSwipes = new List<String>();
  List<String> skills = new List<String>();
  List<String> photos = new List<String>();

  Participant({
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
    @required this.email,
    @required this.photoUrl,
    @required this.uid,
    @required this.displayName,
    this.institute = "Unknown",
    this.company = "Freelancer",
    this.experience = 0.0,
    this.graduationYear = 0,
    this.isIndividual = true,
    this.role = "Freelancer",
    this.stream = "Unknown",
  }) {
    this.name = this.displayName;
    photos.add(this.photoUrl);
  }

  Participant.fromJSON(snapshot) {
    this.email = snapshot["email"];
    this.photoUrl = snapshot["photoUrl"];
    this.uid = snapshot["uid"];
    this.displayName = snapshot["displayName"];
    this.name = snapshot["name"];
    this.gender = snapshot["gender"];
    this.dob = snapshot["dob"];
    this.tshirtSize = snapshot["tshirtSize"];
    this.bio = snapshot["bio"];
    this.isAdmin = snapshot["isAdmin"];
    this.isIndividual = snapshot["isIndividual"];
    this.design = snapshot["design"];
    this.frontend = snapshot["frontend"];
    this.backend = snapshot["backend"];
    this.mobile = snapshot["mobile"];
    this.blockchain = snapshot["blockchain"];
    this.institute = snapshot["institute"];
    this.graduationYear = snapshot["graduationYear"];
    this.stream = snapshot["stream"];
    this.company = snapshot["company"];
    this.experience = snapshot["experience"];
    this.role = snapshot["role"];
    this.rating = snapshot["rating"];
    this.rightSwiped = snapshot["rightSwiped"];
    this.rightSwipes = snapshot["rightSwipes"];
    this.skills = snapshot["skills"];
    this.photos = snapshot["photos"];
  }

  toJSON() {
    return {
      "email": this.email,
      "photoUrl": this.photoUrl,
      "uid": this.uid,
      "displayName": this.displayName,
      "name": this.name,
      "gender": this.gender,
      "dob": this.dob,
      "tshirtSize": this.tshirtSize,
      "isAdmin": this.isAdmin,
      "isIndividual": this.isIndividual,
      "design": this.design,
      "frontend": this.frontend,
      "backend": this.backend,
      "mobile": this.mobile,
      "blockchain": this.blockchain,
      "institute": this.institute,
      "graduationYear": this.graduationYear,
      "stream": this.stream,
      "company": this.company,
      "experience": this.experience,
      "role": this.role,
      "rating": this.rating,
      "rightSwiped": <String>[],
      "rightSwipes": <String>[],
      "skills": <String>[],
    };
  }
}
