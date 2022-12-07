import 'dart:math';

import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ionly_dashboard_view.dart';

class IonlyDashboardController extends State<IonlyDashboardView>
    implements MvcController {
  static late IonlyDashboardController instance;
  late IonlyDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuList = [
    {
      "icon": Icons.shop,
      "title": "Product(s)",
      "item_count": 24,
      "description": "Your product(s)",
      "color": Colors.greenAccent,
    },
    {
      "icon": Icons.person,
      "title": "Customer(s)",
      "item_count": 32,
      "description": "Your customer(s)",
      "color": Colors.redAccent,
    },
    {
      "icon": Icons.list,
      "title": "Order(s)",
      "item_count": 12,
      "description": "Your order(s)",
      "color": Colors.blueAccent,
    },
    {
      "icon": Icons.payment,
      "title": "Payment Method",
      "item_count": 14,
      "description": "Your payment method(s)",
      "color": Colors.orangeAccent,
    },
    {
      "icon": Icons.timer,
      "title": "On Going",
      "item_count": 16,
      "description": "Ongoing",
      "color": Colors.purpleAccent,
    },
    {
      "icon": Icons.check,
      "title": "Done",
      "item_count": 21,
      "description": "Success order(s)",
      "color": Colors.blueAccent,
    },
    {
      "icon": Icons.delete,
      "title": "Rejected",
      "item_count": 21,
      "description": "Rejected order(s)",
      "color": Colors.amber,
    },
    {
      "icon": Icons.refresh,
      "title": "Refunded",
      "item_count": 21,
      "description": "Refunded order(s)",
      "color": Colors.amberAccent,
    }
  ];

  double getRandom(int min, int max) {
    Random rnd;
    rnd = Random();
    return double.parse("${min + rnd.nextInt(max - min)}");
  }
}
