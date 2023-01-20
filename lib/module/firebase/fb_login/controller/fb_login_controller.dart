import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_login_view.dart';

class FbLoginController extends State<FbLoginView> implements MvcController {
  static late FbLoginController instance;
  late FbLoginView view;

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