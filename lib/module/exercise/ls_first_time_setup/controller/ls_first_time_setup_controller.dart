import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_first_time_setup_view.dart';

class LsFirstTimeSetupController extends State<LsFirstTimeSetupView> implements MvcController {
  static late LsFirstTimeSetupController instance;
  late LsFirstTimeSetupView view;

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