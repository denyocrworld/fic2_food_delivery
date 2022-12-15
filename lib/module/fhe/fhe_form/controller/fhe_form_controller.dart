import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_form_view.dart';

class FheFormController extends State<FheFormView> implements MvcController {
  static late FheFormController instance;
  late FheFormView view;

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