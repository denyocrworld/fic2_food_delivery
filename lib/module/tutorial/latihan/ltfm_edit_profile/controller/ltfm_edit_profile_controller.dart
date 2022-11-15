import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ltfm_edit_profile_view.dart';

class LtfmEditProfileController extends State<LtfmEditProfileView> implements MvcController {
  static late LtfmEditProfileController instance;
  late LtfmEditProfileView view;

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