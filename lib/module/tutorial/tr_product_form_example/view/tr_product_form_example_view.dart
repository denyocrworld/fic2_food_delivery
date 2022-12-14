import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrProductFormExampleView extends StatefulWidget {
  const TrProductFormExampleView({Key? key}) : super(key: key);

  Widget build(context, TrProductFormExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TrProductFormExample"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                hint: "Your photo",
                validator: Validator.required,
                value: null,
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Product Name",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: "",
                onChanged: (value) {
                  controller.price = double.parse(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrProductFormExampleView> createState() =>
      TrProductFormExampleController();
}
