import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_list_view.dart';

class FbListController extends State<FbListView> implements MvcController {
  static late FbListController instance;
  late FbListView view;

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