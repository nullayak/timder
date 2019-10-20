import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Timder {
  static SharedPreferences prefs;

  static const String displayNamePref = "displayNamePref";
  static const String emailPref = "emailPref";
  static const String uidPref = "uidPref";
  static const String photoPref = "photoPref";

  static FirebaseUser user;
}
