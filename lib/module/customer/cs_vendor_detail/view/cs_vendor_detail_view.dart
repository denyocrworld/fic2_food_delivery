import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/cs_vendor_detail_controller.dart';

class CsVendorDetailView extends StatefulWidget {
  const CsVendorDetailView({Key? key}) : super(key: key);

  Widget build(context, CsVendorDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CsVendorDetail"),
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
  State<CsVendorDetailView> createState() => CsVendorDetailController();
}