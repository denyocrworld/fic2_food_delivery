import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_order_list_view.dart';

class FbOrderListController extends State<FbOrderListView> implements MvcController {
  static late FbOrderListController instance;
  late FbOrderListView view;

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