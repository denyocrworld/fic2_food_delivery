import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_cart_view.dart';

class TrsmCartController extends State<TrsmCartView> implements MvcController {
  static late TrsmCartController instance;
  late TrsmCartView view;

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