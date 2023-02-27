import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialDemoView extends StatefulWidget {
  const TutorialDemoView({Key? key}) : super(key: key);

  Widget build(context, TutorialDemoController controller) {
    controller.view = this;

    var product = {
      "demo": "test",
      'info': 'test',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                  color: Colors.red,
                ),
                child: const Text(
                  "BlueLock - Sub Indo",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialDemoView> createState() => TutorialDemoController();
}
