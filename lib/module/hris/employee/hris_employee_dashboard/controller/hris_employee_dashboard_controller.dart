import 'package:example/core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class HrisEmployeeDashboardController extends State<HrisEmployeeDashboardView>
    implements MvcController {
  static late HrisEmployeeDashboardController instance;
  late HrisEmployeeDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  /*
    1. udah absen atau blm hari ini
    2. check in
    3. checkout

    attendances
      {uid-user}-{ddMMMy}
        created_at
        checkin_date
        checkout_date
  */

  String get docId {
    var ddMMMy = DateFormat("ddMMMy").format(DateTime.now());
    return "${FirebaseAuth.instance.currentUser!.uid}-$ddMMMy";
  }

  Future checkIn() async {
    Position? position = await LocationService.getLocation();

    await FirebaseFirestore.instance.collection("attendances").doc(docId).set({
      "created_at": Timestamp.now(),
      "checkin_date": DateTime.now(),
      "checkout_date": null,
      "employee": {
        "uid": me.uid,
        "photo": me.photo,
        "employee_name": me.name,
      },
      "checkin_position": {
        "latitude": position?.latitude,
        "longitude": position?.longitude,
      }
    });

    debugPrint("Checkin success");
  }

  Future checkOut() async {
    Position? position = await LocationService.getLocation();

    await FirebaseFirestore.instance
        .collection("attendances")
        .doc(docId)
        .update({
      "checkout_date": DateTime.now(),
      "checkout_position": {
        "latitude": position?.latitude,
        "longitude": position?.longitude,
      }
    });

    debugPrint("Checkout success");
  }

  Future doLogout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HrisLoginView()),
    );
  }

  Future resetCheckInStatus() async {
    await FirebaseFirestore.instance
        .collection("attendances")
        .doc(docId)
        .delete();
  }
}
