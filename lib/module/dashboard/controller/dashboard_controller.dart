import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doJoin(item, joined) async {
    var eventUid = item["id"];
    var userUid = me.uid;

    if (!joined) {
      await FirebaseFirestore.instance
          .collection("event_participants")
          .doc(eventUid + "_" + userUid)
          .set({
        "event_id": eventUid,
        "user_id": userUid,
        "joined": true,
      });
    } else {
      await FirebaseFirestore.instance
          .collection("event_participants")
          .doc(eventUid + "_" + userUid)
          .delete();
    }
  }

  openPaymentUrl(eventId, amount) async {
    var url =
        'https://capekngoding.com/payment_api/public/index.php/pay/$eventId/${me.uid}/$amount';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(
        Uri.parse(url),
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
