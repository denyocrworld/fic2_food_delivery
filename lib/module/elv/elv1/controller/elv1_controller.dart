import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv1_view.dart';

class Elv1Controller extends State<Elv1View> implements MvcController {
  static late Elv1Controller instance;
  late Elv1View view;

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