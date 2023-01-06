import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/pos_product_list_view.dart';

class PosProductListController extends State<PosProductListView>
    implements MvcController {
  static late PosProductListController instance;
  late PosProductListView view;

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
