import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ex_product_list_view.dart';

class ExProductListController extends State<ExProductListView>
    implements MvcController {
  static late ExProductListController instance;
  late ExProductListView view;

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

  List productList = [];
  getProducts() async {
    var response = await Dio().get(
      "http://capekngoding.com:8080/deny/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    productList = obj["data"];
    print("productList: ${productList.length}");
    setState(() {});
  }

  deleteProduct(Map item) async {
    var id = item["id"];
    var response = await Dio().delete(
      "http://capekngoding.com:8080/deny/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    await getProducts();
  }
}
