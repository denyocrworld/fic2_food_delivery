import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/contoh_product_form_view.dart';

class ContohProductFormController extends State<ContohProductFormView>
    implements MvcController {
  static late ContohProductFormController instance;
  late ContohProductFormView view;

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
