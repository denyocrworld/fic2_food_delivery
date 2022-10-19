import 'package:example/core.dart';
import 'package:flutter/material.dart';

class HrisLoginController extends State<HrisLoginView>
    implements MvcController {
  static late HrisLoginController instance;
  late HrisLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  Future doLoginByGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {
      return;
    }

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: $userCredential");
      debugPrint("4");
      //TODO: on login success
      //------------------

      afterLogin();
    } catch (_) {
      print("Error $_");
    }

    debugPrint("6");
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
