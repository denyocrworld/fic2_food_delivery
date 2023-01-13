import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_wrap_category_list_view.dart';

class HrWrapCategoryListController extends State<HrWrapCategoryListView> implements MvcController {
  static late HrWrapCategoryListController instance;
  late HrWrapCategoryListView view;

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