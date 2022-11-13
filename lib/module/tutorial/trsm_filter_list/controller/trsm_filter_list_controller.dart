import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_filter_list_view.dart';

class TrsmFilterListController extends State<TrsmFilterListView> implements MvcController {
  static late TrsmFilterListController instance;
  late TrsmFilterListView view;

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