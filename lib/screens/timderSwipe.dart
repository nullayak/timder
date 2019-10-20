import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:timder/Utils/timder.dart';
import 'package:timder/Utils/timderScaffold.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class TimderSwipe extends StatefulWidget {
  @override
  _TimderSwipeState createState() => _TimderSwipeState();
}

class _TimderSwipeState extends State<TimderSwipe> {
  bool isRight = false;
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
            return TinderSwapCard(
              orientation: AmassOrientation.TOP,
              totalNum: snapshot.data.documents.length,
              stackNum: snapshot.data.documents.length,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.height * 0.8,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              minHeight: MediaQuery.of(context).size.width * 0.8,
              cardBuilder: (context, index) => Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(
                      snapshot.data.documents[index].data["photoUrl"],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(snapshot.data.documents[index].data["displayName"]),
                    SizedBox(
                      height: 10,
                    ),
                    Text(snapshot.data.documents[index].data["bio"]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 3,
                        ),
                        snapshot.data.documents[index].data["backend"]
                            ? Text("Backend")
                            : Text(""),
                        SizedBox(
                          width: 3,
                        ),
                        snapshot.data.documents[index].data["design"]
                            ? Text("design")
                            : Text(""),
                        SizedBox(
                          width: 3,
                        ),
                        snapshot.data.documents[index].data["frontend"]
                            ? Text("frontend")
                            : Text(""),
                        SizedBox(
                          width: 3,
                        ),
                        snapshot.data.documents[index].data["mobile"]
                            ? Text("mobile")
                            : Text(""),
                        SizedBox(
                          width: 3,
                        ),
                        snapshot.data.documents[index].data["blockchain"]
                            ? Text("blockchain")
                            : Text(""),
                        SizedBox(
                          width: 3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              cardController: controller,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  isRight = false;
                  //Card is LEFT swiping
                } else if (align.x > 0) {
                  isRight = true;
                  //Card is RIGHT swiping
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) async {
                /// Get orientation & index of swiped card!
                print("Just Swiped Right $isRight");
                if (isRight) {
                  await Firestore.instance
                      .collection("participants")
                      .document(snapshot.data.documents[index].data["email"])
                      .updateData({
                    "rightSwipes": FieldValue.arrayUnion(
                        [Timder.prefs.getString(Timder.emailPref)]),
                  });
                } else {
                  await Firestore.instance
                      .collection("participants")
                      .document(snapshot.data.documents[index].data["email"])
                      .updateData({
                    "leftSwipes": FieldValue.arrayUnion(
                        [Timder.prefs.getString(Timder.emailPref)]),
                  });
                }
              },
            );
          }
        },
      ),
    );
  }
}
