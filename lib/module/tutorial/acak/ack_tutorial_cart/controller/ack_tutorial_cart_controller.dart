import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ack_tutorial_cart_view.dart';

class AckTutorialCartController extends State<AckTutorialCartView> implements MvcController {
  static late AckTutorialCartController instance;
  late AckTutorialCartView view;

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