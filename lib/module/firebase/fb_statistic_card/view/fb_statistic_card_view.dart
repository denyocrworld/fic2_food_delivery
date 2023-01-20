import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_statistic_card_controller.dart';

class FbStatisticCardView extends StatefulWidget {
  const FbStatisticCardView({Key? key}) : super(key: key);

  Widget build(context, FbStatisticCardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbStatisticCard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FbStatisticCardView> createState() => FbStatisticCardController();
}