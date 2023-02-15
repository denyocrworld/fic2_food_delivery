import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_premade_detail_view.dart';

class CgPremadeDetailController extends State<CgPremadeDetailView>
    implements MvcController {
  static late CgPremadeDetailController instance;
  late CgPremadeDetailView view;

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
