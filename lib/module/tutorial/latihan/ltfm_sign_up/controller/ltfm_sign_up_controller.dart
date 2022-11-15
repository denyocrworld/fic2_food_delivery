import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_sign_up_view.dart';

class LtfmSignUpController extends State<LtfmSignUpView> implements MvcController {
  static late LtfmSignUpController instance;
  late LtfmSignUpView view;

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