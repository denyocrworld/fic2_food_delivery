import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_customer_crud_view.dart';

class LsCustomerCrudController extends State<LsCustomerCrudView> implements MvcController {
  static late LsCustomerCrudController instance;
  late LsCustomerCrudView view;

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