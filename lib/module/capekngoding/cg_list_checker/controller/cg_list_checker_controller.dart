import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_list_checker_view.dart';

class CgListCheckerController extends State<CgListCheckerView> implements MvcController {
  static late CgListCheckerController instance;
  late CgListCheckerView view;

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