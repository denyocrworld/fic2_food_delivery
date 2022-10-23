import 'package:flutter/material.dart';
import '../controller/cg_profile_controller.dart';

class CgProfileView extends StatefulWidget {
  const CgProfileView({Key? key}) : super(key: key);

  Widget build(context, CgProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgProfile"),
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
  State<CgProfileView> createState() => CgProfileController();
}