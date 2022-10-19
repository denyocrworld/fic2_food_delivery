import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ProductCrudFormController extends State<ProductCrudFormView>
    implements MvcController {
  static late ProductCrudFormController instance;
  late ProductCrudFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode {
    return view.item != null;
  }

  doSave() async {
    //alt+shift+e
    var photo = Input.get("photo");
    var productName = Input.get("product_name");
    var price = Input.get("price");
    var description = Input.get("description");

    if (isEditMode) {
      await FirebaseFirestore.instance
          .collection("myawesome_products")
          .doc(view.item!["id"])
          .update({
        "photo": photo,
        "product_name": productName,
        "price": price,
        "description": description,
      });
    } else {
      await FirebaseFirestore.instance.collection("myawesome_products").add({
        "photo": photo,
        "product_name": productName,
        "price": price,
        "description": description,
      });
    }
    Navigator.pop(context);
  }
}
