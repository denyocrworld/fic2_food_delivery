import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_hyperui_list_view.dart';

class CgHyperuiListController extends State<CgHyperuiListView>
    implements MvcController {
  static late CgHyperuiListController instance;
  late CgHyperuiListView view;

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
