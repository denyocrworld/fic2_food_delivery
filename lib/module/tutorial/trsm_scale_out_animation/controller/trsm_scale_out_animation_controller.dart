import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_scale_out_animation_view.dart';

class TrsmScaleOutAnimationController extends State<TrsmScaleOutAnimationView> implements MvcController {
  static late TrsmScaleOutAnimationController instance;
  late TrsmScaleOutAnimationView view;

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