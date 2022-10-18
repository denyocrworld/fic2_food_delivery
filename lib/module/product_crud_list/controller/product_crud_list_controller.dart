import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/product_crud_list_view.dart';

class ProductCrudListController extends State<ProductCrudListView> implements MvcController {
  static late ProductCrudListController instance;
  late ProductCrudListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}