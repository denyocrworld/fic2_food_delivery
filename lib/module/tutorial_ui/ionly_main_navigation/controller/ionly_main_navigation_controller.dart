import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ionly_main_navigation_view.dart';

class IonlyMainNavigationController extends State<IonlyMainNavigationView>
    implements MvcController {
  static late IonlyMainNavigationController instance;
  late IonlyMainNavigationView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
}
