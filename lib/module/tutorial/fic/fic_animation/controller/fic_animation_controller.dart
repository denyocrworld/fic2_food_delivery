import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fic_animation_view.dart';

class FicAnimationController extends State<FicAnimationView>
    implements MvcController {
  static late FicAnimationController instance;
  late FicAnimationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool animate = false;
}
