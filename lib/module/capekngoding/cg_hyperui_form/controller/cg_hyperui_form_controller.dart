import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_hyperui_form_view.dart';

class CgHyperuiFormController extends State<CgHyperuiFormView>
    implements MvcController {
  static late CgHyperuiFormController instance;
  late CgHyperuiFormView view;

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
