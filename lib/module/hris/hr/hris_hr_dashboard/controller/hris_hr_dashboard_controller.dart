import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HrisHrDashboardController extends State<HrisHrDashboardView>
    implements MvcController {
  static late HrisHrDashboardController instance;
  late HrisHrDashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  Future doLogout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HrisLoginView()),
    );
  }
}
