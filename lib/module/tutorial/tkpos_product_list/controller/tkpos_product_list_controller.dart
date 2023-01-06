import 'package:hyper_ui/service/tkpos_service.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tkpos_product_list_view.dart';

class TkposProductListController extends State<TkposProductListView>
    implements MvcController {
  static late TkposProductListController instance;
  late TkposProductListView view;

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

  deleteProduct(Map item) async {
    await TkposService.deleteProduct(item);
    await getProductList();
  }
}
