import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_login_form_with_history_view.dart';

class LsLoginFormWithHistoryController extends State<LsLoginFormWithHistoryView> implements MvcController {
  static late LsLoginFormWithHistoryController instance;
  late LsLoginFormWithHistoryView view;

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