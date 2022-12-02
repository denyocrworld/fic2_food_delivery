import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/module/dev/tab_ui/view/tab_ui_view.dart

=======
>>>>>>> b5b206a3e8f6f394a9e0d9b7160786169dd9ded6:lib/module/tab_ui/view/tab_ui_view.dart
import '../controller/tab_ui_controller.dart';

class TabUiView extends StatefulWidget {
  const TabUiView({Key? key}) : super(key: key);

  Widget build(context, TabUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TabUi"),
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
  State<TabUiView> createState() => TabUiController();
}
