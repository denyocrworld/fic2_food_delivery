import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  getMenu({
    required String label,
    required Widget view,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
        onPressed: () => Get.to(view),
        child: Text(label),
      ),
    );
  }

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
            const Divider(),
            getMenu(
              label: "Dart - Variable",
              view: const FbkDartVariableView(),
            ),
            getMenu(
              label: "Dart - Symbol",
              view: const FbkDartSymbolView(),
            ),
            getMenu(
              label: "Dart - String",
              view: const FbkDartStringView(),
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
