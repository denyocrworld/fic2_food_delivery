import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdLoginController extends State<FdLoginView> implements MvcController {
  static late FdLoginController instance;
  late FdLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doCustomerLogin() async {
    Get.offAll(const FdCustomerMainNavigationView());
  }

  doDriverLogin() async {
    Get.offAll(const FdDriverMainNavigationView());
  }

  doRestaurantLogin() async {
    Get.offAll(const FdRestaurantMainNavigationView());
  }

  doAdminLogin() async {
    Get.offAll(const FdAdminMainNavigationView());
  }
}
