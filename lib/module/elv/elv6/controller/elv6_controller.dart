import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv6_view.dart';

class Elv6Controller extends State<Elv6View> implements MvcController {
  static late Elv6Controller instance;
  late Elv6View view;

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