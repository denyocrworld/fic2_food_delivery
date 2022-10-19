import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/card_template_view.dart';

class CardTemplateController extends State<CardTemplateView>
    implements MvcController {
  static late CardTemplateController instance;
  late CardTemplateView view;

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
