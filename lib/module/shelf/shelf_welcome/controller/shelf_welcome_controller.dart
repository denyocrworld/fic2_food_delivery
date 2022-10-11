import 'package:flutter/material.dart';
import 'package:fhe_template/state_util.dart';
import '../view/shelf_welcome_view.dart';

class ShelfWelcomeController extends State<ShelfWelcomeView>
    implements MvcController {
  static late ShelfWelcomeController instance;
  late ShelfWelcomeView view;
  bool loading = false;

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
