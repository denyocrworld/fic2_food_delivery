import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/fhe_bottom_navigation_controller.dart';

class FheBottomNavigationView extends StatefulWidget {
  const FheBottomNavigationView({Key? key}) : super(key: key);

  Widget build(context, FheBottomNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FheBottomNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FheBottomNavigationView> createState() => FheBottomNavigationController();
}