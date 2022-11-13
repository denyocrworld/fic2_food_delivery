import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_filter_list_controller.dart';

class TrsmFilterListView extends StatefulWidget {
  const TrsmFilterListView({Key? key}) : super(key: key);

  Widget build(context, TrsmFilterListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmFilterList"),
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
  State<TrsmFilterListView> createState() => TrsmFilterListController();
}