import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/card_controller.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  Widget build(context, CardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<CardView> createState() => CardController();
}