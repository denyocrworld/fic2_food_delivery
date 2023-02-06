import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_main_navigation_controller.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkMainNavigation"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Dart Basic",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Flutter Basic",
              style: TextStyle(
                fontSize: 16.0,
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
