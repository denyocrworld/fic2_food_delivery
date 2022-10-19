import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ps_parking_list_view.dart';

class PsParkingListController extends State<PsParkingListView>
    implements MvcController {
  static late PsParkingListController instance;
  late PsParkingListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doBooking(item) async {
    await FirebaseFirestore.instance
        .collection("parking_list")
        .doc(item["id"])
        .update({
      "status": "Ongoing",
    });

    await FirebaseFirestore.instance.collection("booking_list").add({
      "created_at": Timestamp.now(),
      "user": {
        "uid": item["user"]["uid"],
        "name": item["user"]["name"],
        "photo":
            item["user"]["photo"] ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
      },
      "customer": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": FirebaseAuth.instance.currentUser!.displayName,
        "photo": FirebaseAuth.instance.currentUser!.photoURL ??
            "https://i.ibb.co/S32HNjD/no-image.jpg",
      },
      "photo": item["photo"] ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
      "price": item["price"],
      "description": item["description"],
      "latitude": item["latitude"],
      "longitude": item["longitude"],
      "status": "Ongoing",
    });
  }
}
