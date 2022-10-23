import 'package:flutter/material.dart';
import '../controller/cg_main_navigation_controller.dart';

class CgMainNavigationView extends StatefulWidget {
  const CgMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgMainNavigation"),
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
  State<CgMainNavigationView> createState() => CgMainNavigationController();
}