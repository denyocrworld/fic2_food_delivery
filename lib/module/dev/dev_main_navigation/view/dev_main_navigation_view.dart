import 'package:flutter/material.dart';
import '../controller/dev_main_navigation_controller.dart';

class DevMainNavigationView extends StatefulWidget {
  const DevMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, DevMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DevMainNavigation"),
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
  State<DevMainNavigationView> createState() => DevMainNavigationController();
}