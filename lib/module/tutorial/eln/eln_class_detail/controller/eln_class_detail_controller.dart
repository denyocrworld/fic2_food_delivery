import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/eln_class_detail_view.dart';

class ElnClassDetailController extends State<ElnClassDetailView>
    implements MvcController {
  static late ElnClassDetailController instance;
  late ElnClassDetailView view;

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
