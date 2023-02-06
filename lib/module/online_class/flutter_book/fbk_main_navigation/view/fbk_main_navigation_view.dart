import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Book"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dart Basic",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => Get.to(const FbkDartVariableView()),
              child: const Text("Dart - Variable"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Flutter Basic",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FbkMainNavigationView> createState() => FbkMainNavigationController();
}
