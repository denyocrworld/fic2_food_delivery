import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fb_map_view.dart';

class FbMapController extends State<FbMapView> implements MvcController {
  static late FbMapController instance;
  late FbMapView view;

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