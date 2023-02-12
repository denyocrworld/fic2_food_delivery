import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tutorial_product_list_view.dart';

class TutorialProductListController extends State<TutorialProductListView>
    implements MvcController {
  static late TutorialProductListController instance;
  late TutorialProductListView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  bool gridMode = false;
  updateGridMode() {
    gridMode = !gridMode;
    setState(() {});
  }

  getProducts() async {
    var response = await Dio().get(
      "http://127.0.0.1:8080/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "token": AppConfig.token,
        },
      ),
    );
    Map obj = response.data;
    products = obj["data"];
    print(obj);
    setState(() {});
  }

  deleteProduct(Map item) async {
    var id = item["id"];
    var response = await Dio().delete(
      "http://127.0.0.1:8080/deny/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "token": AppConfig.token,
        },
      ),
    );
  }
}
