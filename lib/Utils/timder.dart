import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Timder {
  static SharedPreferences prefs;

  static String displayNamePref = "displayNamePref";
  static String emailPref = "emailPref";
  static String uidPref = "uidPref";
  static String photoPref = "photoPref";

  static FirebaseUser user;
}
