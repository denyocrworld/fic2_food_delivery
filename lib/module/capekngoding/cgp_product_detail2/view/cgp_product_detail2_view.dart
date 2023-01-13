import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cgp_product_detail2_controller.dart';

class CgpProductDetail2View extends StatefulWidget {
  const CgpProductDetail2View({Key? key}) : super(key: key);

  Widget build(context, CgpProductDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgpProductDetail2"),
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
  State<CgpProductDetail2View> createState() => CgpProductDetail2Controller();
}