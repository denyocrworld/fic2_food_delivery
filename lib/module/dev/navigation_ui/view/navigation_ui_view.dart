import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/module/dev/navigation_ui/view/navigation_ui_view.dart

=======
>>>>>>> b5b206a3e8f6f394a9e0d9b7160786169dd9ded6:lib/module/navigation_ui/view/navigation_ui_view.dart
import '../controller/navigation_ui_controller.dart';

class NavigationUiView extends StatefulWidget {
  const NavigationUiView({Key? key}) : super(key: key);

  Widget build(context, NavigationUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationUi"),
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
  State<NavigationUiView> createState() => NavigationUiController();
}
