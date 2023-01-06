import 'package:hyper_ui/service/tkpos_service.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tkpos_pos_view.dart';

class TkposPosController extends State<TkposPosView> implements MvcController {
  static late TkposPosController instance;
  late TkposPosView view;

  @override
  void initState() {
    instance = this;
    getProductList();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List productList = [];
  getProductList() async {
    productList = await TkposService.getProductList();
    setState(() {});
  }

  double get total {
    double productTotal = 0;
    for (var product in productList) {
      product["qty"] = product["qty"] ?? 0;
      productTotal += (product["qty"] * product["price"]);
    }
    return productTotal;
  }
}
