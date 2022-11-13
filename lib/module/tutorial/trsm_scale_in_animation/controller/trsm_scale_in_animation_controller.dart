import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_scale_in_animation_view.dart';

class TrsmScaleInAnimationController extends State<TrsmScaleInAnimationView> implements MvcController {
  static late TrsmScaleInAnimationController instance;
  late TrsmScaleInAnimationView view;

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