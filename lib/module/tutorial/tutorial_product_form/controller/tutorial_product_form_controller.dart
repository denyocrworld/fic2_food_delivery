import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../../service/product_service/product_service.dart';

class TutorialProductFormController extends State<TutorialProductFormView>
    implements MvcController {
  static late TutorialProductFormController instance;
  late TutorialProductFormView view;

  @override
  void initState() {
    instance = this;

    if (widget.item != null) {
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
      description = widget.item!["description"];
    }

    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? photo;
  String? productName;
  double? price;
  String? description;

  bool get isEditMode {
    return widget.item != null;
  }

  doSave() async {
    if (isEditMode) {
      var id = widget.item!["id"];
      await ProductService.updateProduct(
        id: id,
        photo: photo,
        productName: productName,
        price: price,
        description: description,
      );
    } else {
      await ProductService.addProduct(
        photo: photo,
        productName: productName,
        price: price,
        description: description,
      );
    }

    Get.back();
  }
}
