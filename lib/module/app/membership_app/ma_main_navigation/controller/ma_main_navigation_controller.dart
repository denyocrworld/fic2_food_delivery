import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ma_main_navigation_view.dart';

class MaMainNavigationController extends State<MaMainNavigationView>
    implements MvcController {
  static late MaMainNavigationController instance;
  late MaMainNavigationView view;

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
