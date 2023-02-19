import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FdProfileController extends State<FdProfileView>
    implements MvcController {
  static late FdProfileController instance;
  late FdProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    Get.offAll(const FdLoginView());
  }
}
