import 'package:example/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/pos_profile_view.dart';

class PosProfileController extends State<PosProfileView>
    implements MvcController {
  static late PosProfileController instance;
  late PosProfileView view;

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
      MaterialPageRoute(builder: (context) => PosLoginView()),
    );
  }
}
