import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/http_form_example_view.dart';

class HttpFormExampleController extends State<HttpFormExampleView> implements MvcController {
  static late HttpFormExampleController instance;
  late HttpFormExampleView view;

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