import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_hotkey_view.dart';

class CgHotkeyController extends State<CgHotkeyView> implements MvcController {
  static late CgHotkeyController instance;
  late CgHotkeyView view;

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