import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_loading_controller.dart';

class TrsmLoadingView extends StatefulWidget {
  const TrsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, TrsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmLoading"),
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
  State<TrsmLoadingView> createState() => TrsmLoadingController();
}