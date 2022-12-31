import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/cg_hyperui_dialog_view.dart';

class CgHyperuiDialogController extends State<CgHyperuiDialogView> implements MvcController {
  static late CgHyperuiDialogController instance;
  late CgHyperuiDialogView view;

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