import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialLoginController extends State<TutorialLoginView>
    implements MvcController {
  static late TutorialLoginController instance;
  late TutorialLoginView view;
  late String firstName;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(_) {
    super.didUpdateWidget(_);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "admin@demo.com";
  String password = "123456";

  doLogin() async {
    var response = await Dio().post(
      "https://capekngoding.com/deny/api/auth/action/login",
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

    if (obj["success"] != true) {
      showInfoDialog("Gagal login");
      return;
    }

    AuthService.role = "Admin";
    // AuthService.role = "User";

    Get.offAll(const TutorialDashboardView());
  }
}
