import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/demo_order_list_view.dart';

class DemoOrderListController extends State<DemoOrderListView> implements MvcController {
  static late DemoOrderListController instance;
  late DemoOrderListView view;

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