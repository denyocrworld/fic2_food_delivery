import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv10_view.dart';

class Elv10Controller extends State<Elv10View> implements MvcController {
  static late Elv10Controller instance;
  late Elv10View view;

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