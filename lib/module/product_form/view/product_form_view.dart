import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ProductFormView extends StatefulWidget {
  const ProductFormView({Key? key}) : super(key: key);

  Widget build(context, ProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductForm"),
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
                    value: "22  ",
                  ),
                  ExCombo(
                    id: "category",
                    label: "Category",
                    items: [
                      {
                        "label": "Bakery & Cake",
                        "value": "Bakery & Cake",
                      },
                      {
                        "label": "Drink",
                        "value": "Drink",
                      },
                      {
                        "label": "Main Course",
                        "value": "Main Course",
                      }
                    ],
                    value: "Drink",
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
  State<ProductFormView> createState() => ProductFormController();
}
