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
  Participant(
      {this.name,
      this.gender,
      this.dob,
      this.tshirt,
      this.isAdmin,
      this.skills,
      this.design,
      this.frontend,
      this.backend,
      this.mobile,
      this.blockchain});
}
