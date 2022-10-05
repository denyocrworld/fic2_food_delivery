import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

/*
------------------------
https://capekngoding.com
------------------------
Starring:
Name: Flutter Way
Youtube: https: //www.youtube.com/c/TheFlutterWay/playlists?app=desktop
------------------------
[1] Update pubspec.yaml
flutter_svg:

[2] Import
import 'package:flutter_svg/svg.dart';
------------------------
Code generation with snippets can be a good solution for you or it can kill you.
A basic understanding of Dart and Flutter is required.
Keep it in mind, Our snippet can't generate many files yet.
So, all of our snippets are put in one file which is not best practice.
You need to do the optimization yourself, and at least you are familiar with using Flutter.
------------------------
*/

    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.red[900]!,
                      Colors.blue[900]!,
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        constraints: const BoxConstraints(
                          maxWidth: 400.0,
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/icon/icon.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              width: 200.0,
                              child: ElevatedButton.icon(
                                icon: const Icon(MdiIcons.google),
                                label: const Text("Login by Google"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () => controller.doLogin(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
