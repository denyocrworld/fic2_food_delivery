import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_image_view.dart';

class CgImageController extends State<CgImageView> implements MvcController {
  static late CgImageController instance;
  late CgImageView view;

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
