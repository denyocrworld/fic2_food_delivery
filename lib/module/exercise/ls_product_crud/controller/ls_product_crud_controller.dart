import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_product_crud_view.dart';

class LsProductCrudController extends State<LsProductCrudView> implements MvcController {
  static late LsProductCrudController instance;
  late LsProductCrudView view;

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