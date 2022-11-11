import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/tab_list_view.dart';

class TabListController extends State<TabListView> implements MvcController {
  static late TabListController instance;
  late TabListView view;

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
