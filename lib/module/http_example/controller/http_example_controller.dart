import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/http_example_view.dart';

class HttpExampleController extends State<HttpExampleView> implements MvcController {
  static late HttpExampleController instance;
  late HttpExampleView view;

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