import 'package:flutter/material.dart';
import '../controller/debug_order_controller.dart';

class DebugOrderView extends StatefulWidget {
  const DebugOrderView({Key? key}) : super(key: key);

  Widget build(context, DebugOrderController controller) {
    controller.view = this;

    String output = "";
    // *
    // **
    // ***
    // ****
    // *****
    for (var i = 1; i <= 20; i++) {
      String line = "$i : ";

      for (var n = 1; n <= i; n++) {
        line += "*";
      }

      var numberType = i % 2 == 0 ? "Genap" : "Ganjil";

      output += "$line $numberType \n";
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("DebugOrder"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              Text(
                output,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugOrderView> createState() => DebugOrderController();
}
