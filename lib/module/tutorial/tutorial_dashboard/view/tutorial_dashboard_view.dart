import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../widget/my_awesome_carousel.dart';

class TutorialDashboardView extends StatefulWidget {
  const TutorialDashboardView({Key? key}) : super(key: key);

  Widget build(context, TutorialDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
        actions: [
          IconButton(
            onPressed: () => Get.offAll(const TutorialLoginView()),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDashboardView> createState() => TutorialDashboardController();
}
