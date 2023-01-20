import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tutorial_login_view.dart';

class TutorialLoginController extends State<TutorialLoginView> implements MvcController {
  static late TutorialLoginController instance;
  late TutorialLoginView view;

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