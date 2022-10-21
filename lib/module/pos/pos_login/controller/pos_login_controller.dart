import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosLoginController extends State<PosLoginView> implements MvcController {
  static late PosLoginController instance;
  late PosLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doGuestLogin() async {
    await FirebaseAuth.instance.signInAnonymously();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PosMainNavigationView()),
    );
  }
}
