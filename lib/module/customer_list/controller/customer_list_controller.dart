import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/customer_list_view.dart';

class CustomerListController extends State<CustomerListView> implements MvcController {
  static late CustomerListController instance;
  late CustomerListView view;

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