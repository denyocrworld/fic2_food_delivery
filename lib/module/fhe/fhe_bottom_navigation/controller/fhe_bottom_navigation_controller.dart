import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/fhe_bottom_navigation_view.dart';

class FheBottomNavigationController extends State<FheBottomNavigationView> implements MvcController {
  static late FheBottomNavigationController instance;
  late FheBottomNavigationView view;

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