import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_fade_out_animation_view.dart';

class TrsmFadeOutAnimationController extends State<TrsmFadeOutAnimationView> implements MvcController {
  static late TrsmFadeOutAnimationController instance;
  late TrsmFadeOutAnimationView view;

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