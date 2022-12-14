import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TkposProductFormView extends StatefulWidget {
  final Map? item;
  const TkposProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, TkposProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Form"),
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
                value: item?["photo"],
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Product Name",
                hint: "Product Name",
                validator: Validator.required,
                value: item?["product_name"],
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                hint: "Your product price",
                validator: Validator.required,
                value: "${item?["price"] ?? 0}",
                onChanged: (value) {
                  controller.price = double.parse(value);
                },
              ),
              QMemoField(
                label: "Description",
                hint: "Description",
                validator: Validator.required,
                value: item?["description"],
                onChanged: (value) {
                  controller.description = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TkposProductFormView> createState() => TkposProductFormController();
}
