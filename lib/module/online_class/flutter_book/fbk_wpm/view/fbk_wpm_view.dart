import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkWpmView extends StatefulWidget {
  const FbkWpmView({Key? key}) : super(key: key);

  Widget build(context, FbkWpmController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FbkWpm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                "text",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Type",
                validator: Validator.required,
                value: "",
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkWpmView> createState() => FbkWpmController();
}
