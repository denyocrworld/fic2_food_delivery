import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class CgMainController extends State<CgMainView> implements MvcController {
  static late CgMainController instance;
  late CgMainView view;
  bool lightMode = false;

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
    Get.mainTheme.value = lightMode ? getDefaultTheme() : getDarkTheme();
    setState(() {});
  }
}
