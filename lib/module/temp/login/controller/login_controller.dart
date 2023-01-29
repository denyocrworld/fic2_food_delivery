import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogin() async {
    showInfoDialog("Berhasil login!");
  }
}
/*
Bangun Rumah
Arsitek
Tukang
  Palu, Tang, Dsb

Bangun Aplikasi
Architecture
Programmer
  State Management, dsb

X Scalable atau tidak
X Aplikasi jadi susah di testing

Menerapkan Arsitektur Benar
v Scalable
v Mudah di test
*/
