import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ls_pos_view.dart';

class LsPosController extends State<LsPosView> implements MvcController {
  static late LsPosController instance;
  late LsPosView view;

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