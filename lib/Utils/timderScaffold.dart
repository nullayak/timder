import 'package:flutter/material.dart';
import 'package:timder/Utils/timder.dart';

class TimderScaffold extends StatelessWidget {
  final Widget body;
  final Widget floatingButton;
  final Widget bottomWidget;
  final String title;

  final Widget leadingAvatar = Padding(
    padding: EdgeInsets.all(10),
    child: CircleAvatar(
      backgroundImage: NetworkImage(Timder.prefs.getString(Timder.photoPref)),
    ),
  );

  TimderScaffold({
    @required this.body,
    @required this.title,
    this.floatingButton,
    this.bottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: leadingAvatar,
        title: Text(title),
      ),
      body: this.body,
      floatingActionButton: this.floatingButton,
      bottomNavigationBar: bottomWidget,
    );
  }
}
