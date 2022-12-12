import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);
  Widget build(context, TrExampleController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "${controller.counter.value}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.counter.value++;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
