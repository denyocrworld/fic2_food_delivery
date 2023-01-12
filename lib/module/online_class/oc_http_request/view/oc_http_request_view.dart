import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/oc_http_request_controller.dart';

class OcHttpRequestView extends StatefulWidget {
  const OcHttpRequestView({Key? key}) : super(key: key);

  Widget build(context, OcHttpRequestController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcHttpRequest"),
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
  State<OcHttpRequestView> createState() => OcHttpRequestController();
}