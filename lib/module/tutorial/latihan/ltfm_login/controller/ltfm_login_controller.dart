import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_login_view.dart';

class LtfmLoginController extends State<LtfmLoginView> implements MvcController {
  static late LtfmLoginController instance;
  late LtfmLoginView view;

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