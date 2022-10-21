import 'package:example/core.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  doSave() async {}

  Widget build(context, DebugController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1("Firebase"),
          H2("Firebase"),
          H3("Firebase"),
          H4("Firebase"),
          H5("Firebase"),
          H6("Firebase"),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ).xs,
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text("Save"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ).w100.xl,
        ],
      ).p20.scroll,
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}

getText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
    ),
  );
}

H1(String text) => getText(text, 30);
H2(String text) => getText(text, 24);
H3(String text) => getText(text, 20);
H4(String text) => getText(text, 18);
H5(String text) => getText(text, 16);
H6(String text) => getText(text, 14);

extension ButtonExtension on Widget {
  Widget get xs {
    return SizedBox(
      height: 30.0,
      child: this,
    );
  }

  Widget get w100 {
    return SizedBox(
      width: MediaQuery.of(Get.currentContext).size.width,
      child: this,
    );
  }

  Widget get xl {
    return SizedBox(
      height: 50.0,
      child: this,
    );
  }

  Widget get scroll {
    return SingleChildScrollView(
      child: this,
    );
  }

  Widget getPadding(double size) {
    return Padding(
      padding: EdgeInsets.all(size),
      child: this,
    );
  }

  Widget get p10 => getPadding(10);
  Widget get p20 => getPadding(20);
  Widget get p30 => getPadding(30);
}
