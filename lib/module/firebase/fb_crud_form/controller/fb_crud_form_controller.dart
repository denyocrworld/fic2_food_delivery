import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_crud_form_view.dart';

class FbCrudFormController extends State<FbCrudFormView> implements MvcController {
  static late FbCrudFormController instance;
  late FbCrudFormView view;

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