import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_horizontal_category_list_view.dart';

class HrHorizontalCategoryListController extends State<HrHorizontalCategoryListView> implements MvcController {
  static late HrHorizontalCategoryListController instance;
  late HrHorizontalCategoryListView view;

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