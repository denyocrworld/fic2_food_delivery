import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class HrLoginController extends State<HrLoginView> implements MvcController {
  static late HrLoginController instance;
  late HrLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  doLogin() async {
    print("email : $email");
    print("password : $password");

    var response = await Dio().post(
      "http://localhost:8080/deny/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": email,
        "password": password,
      },
    );
    Map obj = response.data;
    print(obj);

    if (obj["success"] == true) {
      //berhasil login
      showInfoDialog("Berhasil login!");
    } else {
      //gagal login
      showInfoDialog("Gagal login!");
    }
  }
}
