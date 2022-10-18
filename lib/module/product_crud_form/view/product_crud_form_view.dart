import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ProductCrudFormView extends StatefulWidget {
  final Map? item;
  const ProductCrudFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, ProductCrudFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductCrudForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              ),
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
          child: Column(
            children: [
              //body
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ExImagePicker(
                        id: "photo",
                        label: "Photo",
                        value: item?["photo"],
                      ),
                      ExTextField(
                        id: "product_name",
                        label: "Product Name",
                        value: item?["product_name"],
                      ),
                      ExTextField(
                        id: "price",
                        label: "Price",
                        keyboardType: TextInputType.number,
                        value: item?["price"],
                      ),
                      ExTextArea(
                        id: "description",
                        label: "Description",
                        value: item?["description"],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductCrudFormView> createState() => ProductCrudFormController();
}
