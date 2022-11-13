import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/trsm_add_and_delete_from_list_controller.dart';

class TrsmAddAndDeleteFromListView extends StatefulWidget {
  const TrsmAddAndDeleteFromListView({Key? key}) : super(key: key);

  Widget build(context, TrsmAddAndDeleteFromListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrsmAddAndDeleteFromList"),
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
  State<TrsmAddAndDeleteFromListView> createState() => TrsmAddAndDeleteFromListController();
}