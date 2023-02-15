import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_http_view.dart';

class CgHttpController extends State<CgHttpView> implements MvcController {
  static late CgHttpController instance;
  late CgHttpView view;

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