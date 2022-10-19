import 'package:example/module/ps/ps_login/view/ps_login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/ps_profile_view.dart';

class PsProfileController extends State<PsProfileView>
    implements MvcController {
  static late PsProfileController instance;
  late PsProfileView view;

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
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const PsLoginView()),
    );
  }
}
