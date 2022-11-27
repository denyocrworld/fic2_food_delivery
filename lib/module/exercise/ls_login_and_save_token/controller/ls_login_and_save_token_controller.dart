import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_login_and_save_token_view.dart';

class LsLoginAndSaveTokenController extends State<LsLoginAndSaveTokenView> implements MvcController {
  static late LsLoginAndSaveTokenController instance;
  late LsLoginAndSaveTokenView view;

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