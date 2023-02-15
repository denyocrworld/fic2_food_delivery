import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/pos_view.dart';

class PosController extends State<PosView> implements MvcController {
  static late PosController instance;
  late PosView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool animated = false;
  doAnimation() {
    animated = !animated;
    setState(() {});
  }
}
