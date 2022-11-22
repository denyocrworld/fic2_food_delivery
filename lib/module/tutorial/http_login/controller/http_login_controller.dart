import 'package:example/core.dart';
import 'package:example/data/app_session.dart';
import 'package:example/service/auth_service.dart';
import 'package:example/shared/util/dialog/show_info_dialog.dart';
import 'package:flutter/material.dart';

class HttpLoginController extends State<HttpLoginView>
    implements MvcController {
  static late HttpLoginController instance;
  late HttpLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "admin@demo.com";
  String password = "123456";

  doLogin() async {
    Map obj = await AuthService.login(
      email: email,
      password: password,
    );
    print(obj);

    if (obj["success"] == false) {
      showInfoDialog('Wrong username or password');
      return;
    }

    AppSession.token = obj["data"]["token"];

    Get.to(const HttpProductListView());
    return;
  }
}
