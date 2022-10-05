import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class EventFormController extends State<EventFormView>
    implements MvcController {
  static late EventFormController instance;
  late EventFormView view;

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
