import 'package:flutter/material.dart';
import 'package:hyper_ui/config.dart';
import 'package:hyper_ui/core.dart';

class TutorialController extends State<TutorialView> implements MvcController {
  static late TutorialController instance;
  late TutorialView view;
  late ScrollController scrollController;
  late TextEditingController textEditingController;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    instance = this;
    scrollController = ScrollController();
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  doLogin() async {
    var response = await Dio().post(
      "${AppConfig.baseUrl}/deny/api/auth/action/login",
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

    if (obj["success"] == true) {
      showInfoDialog("Berhasil Login");
      Get.to(const CgAlertView());
    } else {
      showInfoDialog("Gagal Login");
    }
  }
}
