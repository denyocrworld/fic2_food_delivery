import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ls_favorite_controller.dart';

class LsFavoriteView extends StatefulWidget {
  const LsFavoriteView({Key? key}) : super(key: key);

  Widget build(context, LsFavoriteController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsFavorite"),
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
  State<LsFavoriteView> createState() => LsFavoriteController();
}