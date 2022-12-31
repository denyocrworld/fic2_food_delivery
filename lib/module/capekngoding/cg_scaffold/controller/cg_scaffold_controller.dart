import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_scaffold_view.dart';

class CgScaffoldController extends State<CgScaffoldView> implements MvcController {
  static late CgScaffoldController instance;
  late CgScaffoldView view;

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