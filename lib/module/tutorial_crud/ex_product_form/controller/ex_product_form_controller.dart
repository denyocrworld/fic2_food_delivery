import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ex_product_form_view.dart';

class ExProductFormController extends State<ExProductFormView>
    implements MvcController {
  static late ExProductFormController instance;
  late ExProductFormView view;

  @override
  void initState() {
    instance = this;

    if (isEditMode) {
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
    //Alt+Shift+I
    if (isEditMode) {
      var id = widget.item!["id"];
      var response = await Dio().post(
        "http://capekngoding.com:8080/deny/api/products/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        //alt+shift+e
        data: {
          "photo": photo,
          "product_name": productName,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    } else {
      var response = await Dio().post(
        "http://capekngoding.com:8080/deny/api/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        //alt+shift+e
        data: {
          "photo": photo,
          "product_name": productName,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    }

    Get.back();
  }
}
