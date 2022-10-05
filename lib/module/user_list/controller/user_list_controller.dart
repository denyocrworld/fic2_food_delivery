import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class UserListController extends State<UserListView> implements MvcController {
  static late UserListController instance;
  late UserListView view;

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
