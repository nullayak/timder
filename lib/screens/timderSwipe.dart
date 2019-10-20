import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:timder/Utils/timderScaffold.dart';

class TimderSwipe extends StatefulWidget {
  @override
  _TimderSwipeState createState() => _TimderSwipeState();
}

class _TimderSwipeState extends State<TimderSwipe> {
  List<String> cards = [
    "https://hackinout.co/img/hero.png",
    "https://hackinout.co/img/hero.png"
  ];
  CardController controller = CardController();
  @override
  Widget build(BuildContext context) {
    return TimderScaffold(
      title: "Swipe",
      showNotificationIcon: true,
      body: FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection("users").getDocuments(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            } else {
              return TinderSwapCard(
                orientation: AmassOrientation.BOTTOM,
                totalNum: 2,
                stackNum: 2,
                swipeEdge: 4.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.9,
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: MediaQuery.of(context).size.width * 0.8,
                cardBuilder: (context, index) => Card(
                  child: Image.network(cards[index]),
                ),
                cardController: controller,
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                },
              );
            }
          }
        },
      ),
    );
  }
}
