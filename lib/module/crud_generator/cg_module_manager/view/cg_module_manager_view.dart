import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgModuleManagerView extends StatefulWidget {
  const CgModuleManagerView({Key? key}) : super(key: key);

  Widget build(context, CgModuleManagerController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgModuleManager"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              ExCard(
                title: "Module Manager",
                padding: const EdgeInsets.all(20.0),
                bottomActions: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text("Save"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {},
                  ),
                ],
                children: const [
                  Text("HEllo"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgModuleManagerView> createState() => CgModuleManagerController();
}
