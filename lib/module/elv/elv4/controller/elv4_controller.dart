import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv4_view.dart';

class Elv4Controller extends State<Elv4View> implements MvcController {
  static late Elv4Controller instance;
  late Elv4View view;

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