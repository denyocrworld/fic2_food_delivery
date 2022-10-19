import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/new_product_form_view.dart';

class NewProductFormController extends State<NewProductFormView>
    implements MvcController {
  static late NewProductFormController instance;
  late NewProductFormView view;

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
