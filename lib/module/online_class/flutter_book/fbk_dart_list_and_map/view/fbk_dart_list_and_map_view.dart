import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_list_and_map_controller.dart';

class FbkDartListAndMapView extends StatefulWidget {
  const FbkDartListAndMapView({Key? key}) : super(key: key);

  Widget build(context, FbkDartListAndMapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartListAndMap"),
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
  State<FbkDartListAndMapView> createState() => FbkDartListAndMapController();
}