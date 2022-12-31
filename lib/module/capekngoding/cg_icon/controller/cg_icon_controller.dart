import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_icon_view.dart';

class CgIconController extends State<CgIconView> implements MvcController {
  static late CgIconController instance;
  late CgIconView view;

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