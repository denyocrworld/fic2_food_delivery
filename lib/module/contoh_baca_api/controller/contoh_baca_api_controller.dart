import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/contoh_baca_api_view.dart';

class ContohBacaApiController extends State<ContohBacaApiView> implements MvcController {
  static late ContohBacaApiController instance;
  late ContohBacaApiView view;

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