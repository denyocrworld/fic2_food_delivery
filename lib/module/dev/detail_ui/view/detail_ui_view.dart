import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/module/dev/detail_ui/view/detail_ui_view.dart

=======
>>>>>>> b5b206a3e8f6f394a9e0d9b7160786169dd9ded6:lib/module/detail_ui/view/detail_ui_view.dart
import '../controller/detail_ui_controller.dart';

class DetailUiView extends StatefulWidget {
  const DetailUiView({Key? key}) : super(key: key);

  Widget build(context, DetailUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DetailUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              //body
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DetailUiView> createState() => DetailUiController();
}