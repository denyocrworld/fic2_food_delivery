import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_crud_form_view.dart';

class HrCrudFormController extends State<HrCrudFormView> implements MvcController {
  static late HrCrudFormController instance;
  late HrCrudFormView view;

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