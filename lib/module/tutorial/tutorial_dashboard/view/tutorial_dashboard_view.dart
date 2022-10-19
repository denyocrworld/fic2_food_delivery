import 'package:example/core.dart';
import 'package:flutter/material.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialDashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
            ),
            child: Column(
              children: const [],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}
