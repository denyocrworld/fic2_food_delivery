import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/contoh_view.dart';

class ContohController extends State<ContohView> implements MvcController {
  static late ContohController instance;
  late ContohView view;

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
