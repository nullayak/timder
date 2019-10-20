import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:timder/models/participant.dart';
import 'package:tinder_card/cards.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class TimderSwipe extends StatefulWidget {
  @override
  _TimderSwipeState createState() => _TimderSwipeState();
}

class _TimderSwipeState extends State<TimderSwipe> {
  bool isRight = false;
  List<String> cards = [
    "https://hackinout.co/img/hero.png",
    "https://hackinout.co/img/hero.png",
  ];
  CardController controller = CardController();
  @override
  Widget build(BuildContext context) {
    return TimderScaffold(
      title: "Swipe",
      showNotificationIcon: true,
      body: FutureBuilder<QuerySnapshot>(
        future: Firestore.instance
            .collection("participants")
            .where("isIndividual", isEqualTo: true)
            .getDocuments(),
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
            }

            /// else {
            //   List<Participant> individualParticipants =
            //       List<Participant>(snapshot.data.documents.length);
            //   for (int i = 0; i < snapshot.data.documents.length; i++) {
            //     individualParticipants[i] =
            //         Participant.fromJSON(snapshot.data.documents[i].data);
            //   }
            //   print(snapshot.data.documents[0].data);
            //   return TinderSwapCard(
            //     demoProfiles: individualParticipants,
            //     myCallback: (decision) {
            //       print("Desision ${decision.index}");
            //     },
            //   );
            return TinderSwapCard(
              orientation: AmassOrientation.TOP,
              totalNum: 2,
              stackNum: 2,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.width * 0.9,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              minHeight: MediaQuery.of(context).size.width * 0.8,
              cardBuilder: (context, index) => Card(
                child: Image.network(
                    snapshot.data.documents[index].data["photoUrl"]),
              ),
              cardController: controller,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) async{
                /// Get swiping card's alignment
                if (align.x < 0) {
                  isRight = false;
                  //Card is LEFT swiping
                } else if (align.x > 0) {
                  isRight = true;
                  //Card is RIGHT swiping
                  // await Firestore.instance.collection("")
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {
                /// Get orientation & index of swiped card!
                print("Just Swiped Right $isRight");
              },
            );
          }
        },
      ),
    );
  }
}
