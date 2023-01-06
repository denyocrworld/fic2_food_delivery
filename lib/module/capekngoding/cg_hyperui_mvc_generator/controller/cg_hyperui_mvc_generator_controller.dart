import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_hyperui_mvc_generator_view.dart';

class CgHyperuiMvcGeneratorController extends State<CgHyperuiMvcGeneratorView>
    implements MvcController {
  static late CgHyperuiMvcGeneratorController instance;
  late CgHyperuiMvcGeneratorView view;

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
