import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class EventListController extends State<EventListView>
    implements MvcController {
  static late EventListController instance;
  late EventListView view;

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
