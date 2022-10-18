import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/ps_user_list_view.dart';

class PsUserListController extends State<PsUserListView> implements MvcController {
  static late PsUserListController instance;
  late PsUserListView view;

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