import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_hyperui_fire_stream_view.dart';

class CgHyperuiFireStreamController extends State<CgHyperuiFireStreamView>
    implements MvcController {
  static late CgHyperuiFireStreamController instance;
  late CgHyperuiFireStreamView view;

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
