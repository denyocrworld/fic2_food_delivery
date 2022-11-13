import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_loading_for_http_request_controller.dart';

class TrsmLoadingForHttpRequestView extends StatefulWidget {
  const TrsmLoadingForHttpRequestView({Key? key}) : super(key: key);

  Widget build(context, TrsmLoadingForHttpRequestController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmLoadingForHttpRequest"),
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
  State<TrsmLoadingForHttpRequestView> createState() => TrsmLoadingForHttpRequestController();
}