import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_crud_list_view.dart';

class HrCrudListController extends State<HrCrudListView> implements MvcController {
  static late HrCrudListController instance;
  late HrCrudListView view;

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