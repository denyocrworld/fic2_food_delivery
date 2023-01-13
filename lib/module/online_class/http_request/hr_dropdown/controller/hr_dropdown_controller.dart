import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/hr_dropdown_view.dart';

class HrDropdownController extends State<HrDropdownView> implements MvcController {
  static late HrDropdownController instance;
  late HrDropdownView view;

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