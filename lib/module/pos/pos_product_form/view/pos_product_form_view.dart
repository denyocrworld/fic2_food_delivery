import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosProductFormView extends StatefulWidget {
  const PosProductFormView({Key? key}) : super(key: key);

  Widget build(context, PosProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: const [
                  ExImagePicker(
                    id: "photo",
                    label: "Photo",
                  ),
                  ExTextField(
                    id: "product_name",
                    label: "Product Name",
                    value: "-",
                  ),
                  ExTextField(
                    id: "price",
                    label: "Price",
                    keyboardType: TextInputType.number,
                    value: "0",
                  ),
                  ExCombo(
                    id: "category",
                    label: "Category",
                    items: [
                      {
                        "label": "Food",
                        "value": "Food",
                      },
                      {
                        "label": "Drink",
                        "value": "Drink",
                      },
                      {
                        "label": "Cake",
                        "value": "Cake",
                      }
                    ],
                    value: "Food",
                  ),
                  ExTextArea(
                    id: "description",
                    label: "Description",
                    value: "-",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PosProductFormView> createState() => PosProductFormController();
}
