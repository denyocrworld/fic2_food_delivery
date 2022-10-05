import 'package:flutter/material.dart';
import '../controller/contoh_controller.dart';

class ContohView extends StatefulWidget {
  const ContohView({Key? key}) : super(key: key);

  Widget build(context, ContohController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ContohView> createState() => ContohController();
}