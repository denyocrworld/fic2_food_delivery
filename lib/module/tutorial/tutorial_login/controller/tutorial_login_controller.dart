import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../../service/auth_service/auth_service.dart';

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

  final formKey = GlobalKey<FormState>();

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  bool isLoading = false;
  updateLoading() {
    // if (isLoading) {
    //   isLoading = false;
    // } else {
    //   isLoading = true;
    // }

    isLoading = !isLoading;

    print("isLoading: $isLoading");
    setState(() {});
  }

  String email = "";
  String password = "";

  doLogin() async {
    /*
    URL
    Method
    Data
    Headers
    */
    // var response = await Dio().post(
    //   "https://capekngoding.com/deny/api/auth/action/login",
    //   options: Options(
    //     headers: {
    //       "Content-Type": "application/json",
    //     },
    //   ),
    //   data: {
    //     "email": email,
    //     "password": password,
    //   },
    // );
    // Map obj = response.data;
    // print(response.data);

    Map obj = await AuthService.doLogin(
      email: email,
      password: password,
    );

    if (obj["success"] == true) {
      showInfoDialog("Berhasil login");
      Get.offAll(const TutorialDashboardView());
    } else {
      showInfoDialog("Gagal login");
    }
  }
}
