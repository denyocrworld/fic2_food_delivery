import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ps_booking_list_view.dart';

class PsBookingListController extends State<PsBookingListView>
    implements MvcController {
  static late PsBookingListController instance;
  late PsBookingListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String status = "Ongoing";
  doMarkAsCompleted(item) async {
    await FirebaseFirestore.instance
        .collection("booking_list")
        .doc(item["id"])
        .update({
      "status": "Done",
    });
  }
}
