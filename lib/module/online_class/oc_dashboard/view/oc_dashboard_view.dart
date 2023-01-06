import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Form Login
Form Register
Form Create Employee
*/
class OcDashboardView extends StatefulWidget {
  const OcDashboardView({Key? key}) : super(key: key);

  Widget build(context, OcDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OcDashboardMenu(
                menuList: OcDashboardService.formList,
                title: "Form",
              ),
              OcDashboardMenu(
                menuList: OcDashboardService.menuList,
                title: "Online Class Exercises",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OcDashboardView> createState() => OcDashboardController();
}
