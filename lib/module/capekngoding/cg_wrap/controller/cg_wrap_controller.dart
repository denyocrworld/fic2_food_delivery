import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_wrap_view.dart';

class CgWrapController extends State<CgWrapView> implements MvcController {
  static late CgWrapController instance;
  late CgWrapView view;

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