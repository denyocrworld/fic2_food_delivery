import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/temp_profile_view.dart';

class TempProfileController extends State<TempProfileView> implements MvcController {
  static late TempProfileController instance;
  late TempProfileView view;

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