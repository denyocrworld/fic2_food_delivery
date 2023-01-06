import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_layout_view.dart';

class CgLayoutController extends State<CgLayoutView> implements MvcController {
  static late CgLayoutController instance;
  late CgLayoutView view;

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
