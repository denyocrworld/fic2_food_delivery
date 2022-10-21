import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosProductFormController extends State<PosProductFormView>
    implements MvcController {
  static late PosProductFormController instance;
  late PosProductFormView view;

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
    var photo = Input.get("photo");
    var productName = Input.get("product_name");
    var price = Input.get("price");
    var description = Input.get("description");
    var category = Input.get("category");

    await FirebaseFirestore.instance.collection("pos_products").add({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "description": description,
      "category": category,
      "user": {
        "uid": FirebaseAuth.instance.currentUser!.uid,
        "name": FirebaseAuth.instance.currentUser!.displayName ?? "-",
        "email": FirebaseAuth.instance.currentUser!.email ?? "-",
      }
    });

    Navigator.pop(context);
  }
}
