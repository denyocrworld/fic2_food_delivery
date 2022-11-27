import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_pos_with_table_selection_controller.dart';

class LsPosWithTableSelectionView extends StatefulWidget {
  const LsPosWithTableSelectionView({Key? key}) : super(key: key);

  Widget build(context, LsPosWithTableSelectionController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsPosWithTableSelection"),
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
  State<LsPosWithTableSelectionView> createState() => LsPosWithTableSelectionController();
}