import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CgMainController extends State<CgMainView> implements MvcController {
  static late CgMainController instance;
  late CgMainView view;
  bool lightMode = true;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  Widget mainView = const CgHotkeyView();
  updateView(Widget view) {
    mainView = view;
    update();
  }

  updateTheme() {
    lightMode = !lightMode;
    setState(() {});
  }
}
