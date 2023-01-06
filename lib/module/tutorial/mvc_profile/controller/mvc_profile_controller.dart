import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/mvc_profile_view.dart';

class MvcProfileController extends State<MvcProfileView>
    implements MvcController {
  static late MvcProfileController instance;
  late MvcProfileView view;

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
