import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/contoh_list_view.dart';

class ContohListController extends State<ContohListView>
    implements MvcController {
  static late ContohListController instance;
  late ContohListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int page = 1;
  String search = "";
}
