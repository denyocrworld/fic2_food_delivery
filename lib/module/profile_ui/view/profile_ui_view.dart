import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/profile_ui_controller.dart';

class ProfileUiView extends StatefulWidget {
  const ProfileUiView({Key? key}) : super(key: key);

  Widget build(context, ProfileUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProfileUi"),
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
  State<ProfileUiView> createState() => ProfileUiController();
}