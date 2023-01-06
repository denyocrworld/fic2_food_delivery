import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ExProductFormView extends StatefulWidget {
  final Map? item;
  const ExProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, ExProductFormController controller) {
    controller.view = this;

    var header = "Create Product";
    if (item != null) {
      header = "Update Product";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(header),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              //cl
              onPressed: () => controller.doSave(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QImagePicker(
                label: "Photo",
                validator: Validator.required,
                value: item?["photo"],
                onChanged: (value) {
                  controller.photo = value;
                },
              ),
              QTextField(
                label: "Product name",
                validator: Validator.required,
                value: item?["product_name"],
                onChanged: (value) {
                  controller.productName = value;
                },
              ),
              QNumberField(
                label: "Price",
                validator: Validator.required,
                value: item?["price"]?.toString(),
                onChanged: (value) {
                  controller.price = double.parse(value);
                },
              ),
              QMemoField(
                label: "Description",
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
  State<ExProductFormView> createState() => ExProductFormController();
}
