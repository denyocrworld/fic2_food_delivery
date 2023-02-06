import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fbk_dart_symbol_controller.dart';

class FbkDartSymbolView extends StatefulWidget {
  const FbkDartSymbolView({Key? key}) : super(key: key);

  Widget build(context, FbkDartSymbolController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkDartSymbol"),
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
  State<FbkDartSymbolView> createState() => FbkDartSymbolController();
}