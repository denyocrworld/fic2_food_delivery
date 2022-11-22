import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_product_form_view.dart';

class LtfmProductFormController extends State<LtfmProductFormView> implements MvcController {
  static late LtfmProductFormController instance;
  late LtfmProductFormView view;

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