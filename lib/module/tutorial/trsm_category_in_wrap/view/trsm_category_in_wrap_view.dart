import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_category_in_wrap_controller.dart';

class TrsmCategoryInWrapView extends StatefulWidget {
  const TrsmCategoryInWrapView({Key? key}) : super(key: key);

  Widget build(context, TrsmCategoryInWrapController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmCategoryInWrap"),
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
  State<TrsmCategoryInWrapView> createState() => TrsmCategoryInWrapController();
}