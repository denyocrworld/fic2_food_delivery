import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/oc_state_management_view.dart';

class OcStateManagementController extends State<OcStateManagementView> implements MvcController {
  static late OcStateManagementController instance;
  late OcStateManagementView view;

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