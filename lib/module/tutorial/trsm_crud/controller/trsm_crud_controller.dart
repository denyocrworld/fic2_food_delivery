import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_crud_view.dart';

class TrsmCrudController extends State<TrsmCrudView> implements MvcController {
  static late TrsmCrudController instance;
  late TrsmCrudView view;

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