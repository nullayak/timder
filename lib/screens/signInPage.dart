import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign-In"),
      ),
      body: Center(
        child: MaterialButton(
          child: Text("Sign-In"),
          onPressed: () {},
        ),
      ),
    );
  }
}
