import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_text_view.dart';

class CgTextController extends State<CgTextView> implements MvcController {
  static late CgTextController instance;
  late CgTextView view;

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
