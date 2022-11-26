import 'package:example/module/tutorial/tr/widget/form_example.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../widget/tr_list.dart';

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

  Widget build(context, TrController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial View"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TrList(
                title: "FIC State Management",
                items: controller.ficStateManagementList,
                color: Colors.purple,
              ),
              TrList(
                title: "State Management",
                items: controller.items,
                color: Colors.red,
              ),
              TrList(
                title: "Form",
                items: controller.formItems,
                color: Colors.green,
              ),
              TrList(
                title: "HTTP Request",
                items: controller.httpRequestItems,
                color: Colors.green,
              ),
              TrList(
                title: "Firebase x Firestore",
                items: controller.firebaseExampleItems,
                color: Colors.red,
              ),
              TrList(
                title: "UI Example",
                items: controller.uiExampleItems,
                color: Colors.cyan,
              ),
              TrList(
                title: "Local Storage",
                items: controller.localStorageItems,
                color: Colors.brown,
              ),
              TrList(
                title: "State Management Exercise",
                items: controller.stateManagementExerciseList,
                color: Colors.green,
              ),
              TrList(
                title: "Form Exercise",
                items: controller.formExerciseList,
                color: Colors.green,
                head: const TrFormExample(),
              ),
              TrList(
                title: "Local Storage Exercise",
                items: controller.formExerciseList,
                color: Colors.blueAccent,
              ),
              TrList(
                title: "HTTP Exercise",
                items: controller.formExerciseList,
                color: Colors.purple,
              ),
              TrList(
                title: "Firebase Exercise",
                items: controller.formExerciseList,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
