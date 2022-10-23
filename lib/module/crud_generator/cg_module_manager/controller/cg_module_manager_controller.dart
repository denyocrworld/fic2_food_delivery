import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_module_manager_view.dart';

class CgModuleManagerController extends State<CgModuleManagerView> implements MvcController {
  static late CgModuleManagerController instance;
  late CgModuleManagerView view;

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