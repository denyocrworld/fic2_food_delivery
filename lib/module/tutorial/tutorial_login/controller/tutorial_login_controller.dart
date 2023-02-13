import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginController extends State<TutorialLoginView>
    implements MvcController {
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

  final formKey = GlobalKey<FormState>();
}