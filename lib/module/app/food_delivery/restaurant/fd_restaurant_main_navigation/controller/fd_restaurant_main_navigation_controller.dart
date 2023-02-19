import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/fd_restaurant_main_navigation_view.dart';

class FdRestaurantMainNavigationController
    extends State<FdRestaurantMainNavigationView> implements MvcController {
  static late FdRestaurantMainNavigationController instance;
  late FdRestaurantMainNavigationView view;

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
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
