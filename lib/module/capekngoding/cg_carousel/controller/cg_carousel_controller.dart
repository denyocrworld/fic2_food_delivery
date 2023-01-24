import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_carousel_view.dart';

class CgCarouselController extends State<CgCarouselView> implements MvcController {
  static late CgCarouselController instance;
  late CgCarouselView view;

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