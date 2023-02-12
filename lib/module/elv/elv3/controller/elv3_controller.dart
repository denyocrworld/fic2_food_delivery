import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/elv3_view.dart';

class Elv3Controller extends State<Elv3View> implements MvcController {
  static late Elv3Controller instance;
  late Elv3View view;

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