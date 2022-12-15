import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_item_view.dart';

class FheItemController extends State<FheItemView> implements MvcController {
  static late FheItemController instance;
  late FheItemView view;

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