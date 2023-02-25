import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/user_form_view.dart';

class UserFormController extends State<UserFormView> implements MvcController {
  static late UserFormController instance;
  late UserFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final formKey = GlobalKey<FormState>();
}
