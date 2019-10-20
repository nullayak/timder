import 'package:flutter/material.dart';
import 'package:timder/Utils/timder.dart';

class TimderScaffold extends StatelessWidget {
  final Widget body;
  final Widget floatingButton;
  final Widget bottomWidget;
  final String title;
  final Widget leadingAvatar;

  TimderScaffold({
    @required this.body,
    @required this.title,
    this.floatingButton,
    this.bottomWidget,
    this.leadingAvatar = const CircleAvatar(
      backgroundImage: NetworkImage(const Timder.prefs.getString(const Timder.photoPref)),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: this.body,
      floatingActionButton: this.floatingButton,
      bottomNavigationBar: bottomWidget,
    );
  }
}
