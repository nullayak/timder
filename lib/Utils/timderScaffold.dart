import 'package:flutter/material.dart';

class TimderScaffold extends StatelessWidget {
  final Widget body;
  final Widget floatingButton;

  TimderScaffold({
    @required this.body,
    this.floatingButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timder"),
      ),
      body: this.body,
      floatingActionButton: this.floatingButton,
    );
  }
}
