import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_main_view.dart';

class CgMainController extends State<CgMainView> implements MvcController {
  static late CgMainController instance;
  late CgMainView view;

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