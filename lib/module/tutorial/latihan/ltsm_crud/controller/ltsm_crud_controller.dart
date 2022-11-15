import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltsm_crud_view.dart';

class LtsmCrudController extends State<LtsmCrudView> implements MvcController {
  static late LtsmCrudController instance;
  late LtsmCrudView view;

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