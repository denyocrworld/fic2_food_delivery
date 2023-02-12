import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv7_view.dart';

class Elv7Controller extends State<Elv7View> implements MvcController {
  static late Elv7Controller instance;
  late Elv7View view;

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