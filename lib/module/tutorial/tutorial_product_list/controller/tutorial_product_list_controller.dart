import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/tutorial_product_list_view.dart';

class TutorialProductListController extends State<TutorialProductListView> implements MvcController {
  static late TutorialProductListController instance;
  late TutorialProductListView view;

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