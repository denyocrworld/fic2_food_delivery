import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_premade_login_view.dart';

class CgPremadeLoginController extends State<CgPremadeLoginView>
    implements MvcController {
  static late CgPremadeLoginController instance;
  late CgPremadeLoginView view;

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
