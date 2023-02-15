import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_form_view.dart';

class CgFormController extends State<CgFormView> implements MvcController {
  static late CgFormController instance;
  late CgFormView view;

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
