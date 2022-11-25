import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/tr_basic_widget_controller.dart';

class TrBasicWidgetView extends StatefulWidget {
  const TrBasicWidgetView({Key? key}) : super(key: key);

  Widget build(context, TrBasicWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrBasicWidget"),
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
  State<TrBasicWidgetView> createState() => TrBasicWidgetController();
}