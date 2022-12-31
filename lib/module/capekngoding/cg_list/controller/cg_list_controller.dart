import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_list_view.dart';

class CgListController extends State<CgListView> implements MvcController {
  static late CgListController instance;
  late CgListView view;

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