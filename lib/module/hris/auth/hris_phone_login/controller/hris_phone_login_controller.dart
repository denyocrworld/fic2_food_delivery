import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class HrisPhoneLoginController extends State<HrisPhoneLoginView>
    implements MvcController {
  static late HrisPhoneLoginController instance;
  late HrisPhoneLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  late String verificationId;
  doLoginByPhoneNumber() async {
    var countryCode = Input.get("country_code");
    var phoneNumber = Input.get("phone_number");
    var fullPhoneNumber = countryCode + phoneNumber;

    try {
      var c =
          await FirebaseAuth.instance.signInWithPhoneNumber(fullPhoneNumber);
      verificationId = c.verificationId;
    } on Exception catch (_) {
      //
      debugPrint("Error: $_");
    }
  }

  doPhoneVerification() async {
    var smsCode = Input.get("verification_code");

    try {
      AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );

      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(authCredential);

      afterLogin();
    } on Exception catch (_) {}
  }

  afterLogin() async {
    await UserService.initialize();

    if (isHR) {
      GoRouter.of(context).go('/hris_hr_dashboard');
    } else {
      GoRouter.of(context).go('/hris_employee_dashboard');
    }
  }
}
