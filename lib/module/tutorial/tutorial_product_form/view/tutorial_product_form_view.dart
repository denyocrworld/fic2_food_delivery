import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialProductFormView extends StatefulWidget {
  final Map? item;
  const TutorialProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, TutorialProductFormController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Form"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        validator: Validator.required,
                        value: controller.photo,
                        onChanged: (value) {
                          controller.photo = value;
                        },
                      ),
                      QTextField(
                        label: "Product Name",
                        validator: Validator.required,
                        value: controller.productName,
                        onChanged: (value) {
                          controller.productName = value;
                        },
                      ),
                      QNumberField(
                        label: "Price",
                        validator: Validator.required,
                        value: controller.price?.toString(),
                        onChanged: (value) {
                          controller.price = double.tryParse(value) ?? 0;
                        },
                      ),
                      QMemoField(
                        label: "Description",
                        validator: Validator.required,
                        value: controller.description,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 68,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () => controller.doSave(),
          child: const Text("Save"),
        ),
      ),
    );
  }

  @override
  State<TutorialProductFormView> createState() =>
      TutorialProductFormController();
}
