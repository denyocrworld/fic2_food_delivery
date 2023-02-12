import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/core.dart';

class TutorialProductFormController extends State<TutorialProductFormView>
    implements MvcController {
  static late TutorialProductFormController instance;
  late TutorialProductFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      id = widget.item!["id"];
      photo = widget.item!["photo"];
      productName = widget.item!["product_name"];
      price = widget.item!["price"];
      productCategory = widget.item!["product_category"];
      description = widget.item!["description"];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int? id;
  String? photo;
  String? productName;
  String? productCategory;
  double? price;
  String? description;

  bool get isEditMode {
    return widget.item != null;
  }

  doSave() async {
    if (isEditMode) {
      //Update
      var response = await Dio().post(
        "http://127.0.0.1:8080/deny/api/products/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "token": AppConfig.token,
          },
        ),
        data: {
          "photo": photo,
          "product_name": productName,
          "product_category": productCategory,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    } else {
      //Create
      var response = await Dio().post(
        "http://127.0.0.1:8080/deny/api/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "token": AppConfig.token,
          },
        ),
        data: {
          "photo": photo,
          "product_name": productName,
          "product_category": productCategory,
          "price": price,
          "description": description,
        },
      );
      Map obj = response.data;
    }
    await showInfoDialog("Berhasil menyimpan data");
    Get.back();
  }
}
