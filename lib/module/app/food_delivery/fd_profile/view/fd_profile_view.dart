import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_profile_controller.dart';

class FdProfileView extends StatefulWidget {
  const FdProfileView({Key? key}) : super(key: key);

  Widget build(context, FdProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FdProfile"),
        actions: [
          IconButton(
            onPressed: () => controller.doLogout(),
            icon: const Icon(
              Icons.logout,
              size: 24.0,
            ),
          ),
        ],
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
  State<FdProfileView> createState() => FdProfileController();
}
