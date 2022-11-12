import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/searchfield_ui_controller.dart';

class SearchfieldUiView extends StatefulWidget {
  const SearchfieldUiView({Key? key}) : super(key: key);

  Widget build(context, SearchfieldUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchfieldUi"),
        actions: const [],
      ),
      body: ListView(
        children: const [
          //body
        ],
      ),
    );
  }

  @override
  State<SearchfieldUiView> createState() => SearchfieldUiController();
}