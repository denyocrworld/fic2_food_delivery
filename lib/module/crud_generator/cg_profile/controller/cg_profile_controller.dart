import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_profile_view.dart';

class CgProfileController extends State<CgProfileView> implements MvcController {
  static late CgProfileController instance;
  late CgProfileView view;

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