import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

  header(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(Get.currentContext).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget build(context, TrController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial View"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //-------------------
              Container(
                height: 300,
                color: Colors.red[200],
                child: Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 150.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      color: Colors.blue,
                      height: 150.0,
                      child: Container(
                        padding: const EdgeInsets.all(12.0),
                        transform: Matrix4.translationValues(0.0, -30, 0),
                        color: Colors.purple,
                        height: 150.0,
                      ),
                    ),
                  ],
                ),
              ),
              //-------------------
              const SizedBox(
                height: 200.0,
              ),
              header("State Management"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.items.length,
                    (index) {
                      var item = controller.items[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                      );
                    },
                  ),
                );
              }),
              const SizedBox(
                height: 20.0,
              ),
              header("Form"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.formItems.length,
                    (index) {
                      var item = controller.formItems[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
