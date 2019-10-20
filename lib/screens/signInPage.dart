import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:timder/Utils/timder.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:timder/screens/homepage.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.none) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return TimderScaffold(
              title: "Sign In",
              showNotificationIcon: false,
              body: Center(
                child: RaisedButton(
                  onPressed: () async {
                    FirebaseUser user = await _handleGoogleSignIn();
                    setBasicData(user);
                  },
                  child: Text("Sign In"),
                ),
              ),
            );
          }
        }
      },
    );
  }

  Future<FirebaseUser> _handleGoogleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    AuthResult authResult = await _auth.signInWithCredential(credential);
    FirebaseUser user = authResult.user;
    return user;
  }

  void setBasicData(FirebaseUser user) async {
    Timder.prefs.setString(Timder.displayNamePref, user.displayName);
    Timder.prefs.setString(Timder.emailPref, user.email);
    Timder.prefs.setString(Timder.uidPref, user.uid);
    Timder.prefs.setString(Timder.photoPref, user.photoUrl);

    await Firestore.instance
        .collection('participants')
        .document(user.email)
        .setData(
      {
        "display_name": user.displayName,
        "email": user.email,
        "uid": user.uid,
        "photoUrl": user.photoUrl,
        "isIndividual": true,
        "name": user.displayName,
        "gender": "M",
        "dob": "5 Aug 2000",
        "tshirtSize": "M",
        "bio": "My Bio",
        "isAdmin": false,
        "design": false,
        "frontend": true,
        "backend": true,
        "mobile": true,
        "blockchain": false,
        "institute": "Indian Institute of Information Technology",
        "graduationYear": 2022,
        "stream": "CS",
        "company": "NA",
        "experience": "NA",
        "role": "NA",
        "rating": 120,
        "rightSwiped": [],
        "rightSwipes": [],
        "skills": [],
        "photos": [],
      },
      merge: true,
    ).then((onValue) {
      print(
          "Saved Login Data: ${Timder.prefs.getString(Timder.displayNamePref)}");
    });
  }
}
