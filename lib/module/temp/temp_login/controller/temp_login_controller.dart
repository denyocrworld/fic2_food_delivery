import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/temp_login_view.dart';

class TempLoginController extends State<TempLoginView> implements MvcController {
  static late TempLoginController instance;
  late TempLoginView view;

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