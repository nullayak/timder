import 'package:flutter/material.dart';
import 'package:timder/Utils/timderScaffold.dart';

class RequestNotification extends StatefulWidget {
  @override
  _RequestNotificationState createState() => _RequestNotificationState();
}

class _RequestNotificationState extends State<RequestNotification> {
  @override
  Widget build(BuildContext context) {
    return TimderScaffold(
      title: "Matches",
      showNotificationIcon: false,
      body: Container(),
    );
  }
}
