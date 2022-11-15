import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltfm_filter_bottom_sheet_controller.dart';

class LtfmFilterBottomSheetView extends StatefulWidget {
  const LtfmFilterBottomSheetView({Key? key}) : super(key: key);

  Widget build(context, LtfmFilterBottomSheetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmFilterBottomSheet"),
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
  State<LtfmFilterBottomSheetView> createState() => LtfmFilterBottomSheetController();
}