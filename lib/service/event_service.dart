import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

String globalMessage = "";

class Eventservice {
  static handleQueryParameter() async {
    String? myurl = Uri.base.toString();

    debugPrint("myurl $myurl");

    if (myurl.contains("?") == false) return;

    var itemArr = myurl.split("?")[1].split("&");
    var queryParams = {};
    for (var i = 0; i < itemArr.length; i++) {
      var arr = itemArr[i].split("=");
      var field = arr[0];
      var value = arr[1];
      queryParams[field] = value;
    }

    String? message = queryParams["message"];
    if (message != null) {
      globalMessage = message;
      return;
    }

    String? orderId = queryParams["order_id"];
    String? eventId = queryParams["event_id"];
    String? userId = queryParams["user_id"];
    String? amount = queryParams["amount"];

    await FirebaseFirestore.instance.collection("events").doc(eventId).update({
      "prize_pool": FieldValue.increment(
        double.parse(amount.toString()),
      ),
    });

    await FirebaseFirestore.instance.collection("event_supports").add({
      "event_id": eventId,
      "user_id": userId,
      "amount": amount,
      "order_id": orderId,
    });

    debugPrint("qp ${Uri.base.queryParameters}");
    debugPrint("eventId >>> $eventId : $amount ");
    debugPrint("Prize pool updated! $amount $eventId");
  }
}
