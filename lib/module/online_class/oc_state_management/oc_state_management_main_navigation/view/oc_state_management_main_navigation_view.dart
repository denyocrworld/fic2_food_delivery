import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_state_management_main_navigation_controller.dart';

class OcStateManagementMainNavigationView extends StatefulWidget {
  const OcStateManagementMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, OcStateManagementMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcStateManagementMainNavigation"),
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
  State<OcStateManagementMainNavigationView> createState() => OcStateManagementMainNavigationController();
}