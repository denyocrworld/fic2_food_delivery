import 'package:example/core.dart';
import 'package:flutter/material.dart';

class FormUiView extends StatefulWidget {
  const FormUiView({Key? key}) : super(key: key);

  Widget build(context, FormUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormUi"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            const Text(
              "text12",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ExCard(
              title: "Basic Form",
              width: 240.0,
              actions: const [],
              bottomActions: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {},
                ),
              ],
              children: [
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FormUiView> createState() => FormUiController();
}
