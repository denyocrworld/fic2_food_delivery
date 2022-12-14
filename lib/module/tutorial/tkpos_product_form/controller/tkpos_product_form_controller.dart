import 'package:example/service/tkpos_service.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tkpos_product_form_view.dart';

class TkposProductFormController extends State<TkposProductFormView>
    implements MvcController {
  static late TkposProductFormController instance;
  late TkposProductFormView view;

  @override
  void initState() {
    instance = this;
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
      photo = photo ?? widget.item!["photo"];
      productName = productName ?? widget.item!["product_name"];
      price = price ?? widget.item!["price"];
      description = description ?? widget.item!["description"];

      await TkposService.update(
        id: widget.item!["id"],
        photo: photo!,
        productName: productName!,
        price: price!,
        description: description!,
      );
    } else {
      await TkposService.add(
        photo: photo!,
        productName: productName!,
        price: price!,
        description: description!,
      );
    }
    Get.back();
  }
}
