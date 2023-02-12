import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
        title: const Text("TutorialProductForm"),
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
                      label: "Product name",
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
                        controller.price = double.tryParse(value) ?? 0.0;
                      },
                    ),
                    QDropdownField(
                      label: "Product category",
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Sembako",
                          "value": 1,
                        },
                        {
                          "label": "Minuman",
                          "value": 2,
                        },
                        {
                          "label": "Rokok",
                          "value": 3,
                        }
                      ],
                      onChanged: (value, label) {
                        controller.productCategory = label;
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
      )
              .animate(
                delay: 300.ms,
              )
              .slide()
              .fade()
              .shake()),
      bottomNavigationBar: Container(
        height: 64,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                controller.isEditMode ? Colors.orange : Colors.green,
          ),
          onPressed: () => controller.doSave(),
          child: Text(controller.isEditMode ? "Update" : "Save"),
        )
            .animate(
              delay: 200.ms,
            )
            .rotate()
            .shake(),
      ),
    );
  }

  @override
  State<TutorialProductFormView> createState() =>
      TutorialProductFormController();
}
