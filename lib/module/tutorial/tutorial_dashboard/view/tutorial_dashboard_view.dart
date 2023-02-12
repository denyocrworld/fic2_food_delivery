import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    //penyimpanannya berbasis index
    List products = [
      "JR SUPER 12", //0
      "SUSU ENAK", //1
    ];

    //penyimpanannya berbasis key n value
    Map product = {
      //key: value
      "id": 1,
      "product_name": "GG FILTER 12",
      "price": 25.0,
      "description": "-",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [],
        ),
      ),
    );
  }

  @override
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}
