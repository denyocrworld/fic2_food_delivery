import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ProductFormController extends State<ProductFormView>
    implements MvcController {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doSave() async {
    var productName = Input.get("product_name");
    var photo = Input.get("photo");
    var price = Input.get("price");
    var category = Input.get("category");

    await FirebaseFirestore.instance.collection("products").add({
      "product_name": productName,
      "photo": photo,
      "price": price,
      "category": category,
    });

    Navigator.pop(context);
  }
}
