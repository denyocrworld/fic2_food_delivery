import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/cg_map_view.dart';

class CgMapController extends State<CgMapView> implements MvcController {
  static late CgMapController instance;
  late CgMapView view;

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