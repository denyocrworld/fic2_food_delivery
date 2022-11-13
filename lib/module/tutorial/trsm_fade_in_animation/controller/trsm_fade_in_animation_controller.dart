import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/trsm_fade_in_animation_view.dart';

class TrsmFadeInAnimationController extends State<TrsmFadeInAnimationView> implements MvcController {
  static late TrsmFadeInAnimationController instance;
  late TrsmFadeInAnimationView view;

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