import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tr_product_form_example_view.dart';

class TrProductFormExampleController extends State<TrProductFormExampleView>
    implements MvcController {
  static late TrProductFormExampleController instance;
  late TrProductFormExampleView view;

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

  doSave() async {
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
      },
    );
    Map obj = response.data;
    Get.back();
  }
}
