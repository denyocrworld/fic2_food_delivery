import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fb_map_controller.dart';

class FbMapView extends StatefulWidget {
  const FbMapView({Key? key}) : super(key: key);

  Widget build(context, FbMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbMap"),
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
  State<FbMapView> createState() => FbMapController();
}