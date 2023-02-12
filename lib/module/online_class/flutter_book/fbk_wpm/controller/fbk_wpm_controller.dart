import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fbk_wpm_view.dart';

class FbkWpmController extends State<FbkWpmView> implements MvcController {
  static late FbkWpmController instance;
  late FbkWpmView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  FocusNode focusNode = FocusNode();
}
