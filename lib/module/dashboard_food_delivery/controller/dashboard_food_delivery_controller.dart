import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/dashboard_food_delivery_view.dart';

class DashboardFoodDeliveryController extends State<DashboardFoodDeliveryView> implements MvcController {
  static late DashboardFoodDeliveryController instance;
  late DashboardFoodDeliveryView view;

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