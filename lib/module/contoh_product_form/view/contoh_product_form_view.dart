import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ContohProductFormView extends StatefulWidget {
  final Map? item;
  const ContohProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  bool get isEditMode {
    return item != null;
  }

  Widget build(context, ContohProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ContohProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () async {
                var photo = Input.get("photo");
                var productName = Input.get("product_name");
                var category = Input.get("category");
                var price = Input.get("price");

                debugPrint("photo : $photo");
                debugPrint("productName : $productName");
                debugPrint("category : $category");
                debugPrint("price : $price");

                if (isEditMode) {
                  await FirebaseFirestore.instance
                      .collection("tiktok_products")
                      .doc(item!["id"])
                      .update({
                    "photo": photo,
                    "product_name": productName,
                    "category": category,
                    "price": price,
                  });
                } else {
                  await FirebaseFirestore.instance
                      .collection("tiktok_products")
                      .add({
                    "photo": photo,
                    "product_name": productName,
                    "category": category,
                    "price": price,
                  });
                }

                Navigator.pop(context);
              },
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
                children: [
                  //body
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
                  ExCombo(
                    id: "category",
                    label: "Category",
                    items: const [
                      {
                        "label": "Electronics",
                        "value": "Electronics",
                      },
                      {
                        "label": "Health",
                        "value": "Health",
                      },
                      {
                        "label": "Food",
                        "value": "Food",
                      }
                    ],
                    value: item?["category"],
                  ),
                  ExTextField(
                    id: "price",
                    label: "Price",
                    keyboardType: TextInputType.number,
                    value: item?["price"],
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
  State<ContohProductFormView> createState() => ContohProductFormController();
}
