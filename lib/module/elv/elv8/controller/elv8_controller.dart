import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv8_view.dart';

class Elv8Controller extends State<Elv8View> implements MvcController {
  static late Elv8Controller instance;
  late Elv8View view;

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