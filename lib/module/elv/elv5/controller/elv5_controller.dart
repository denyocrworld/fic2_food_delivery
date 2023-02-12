import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv5_view.dart';

class Elv5Controller extends State<Elv5View> implements MvcController {
  static late Elv5Controller instance;
  late Elv5View view;

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