import 'package:blur/blur.dart';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class HrisLoginView extends StatefulWidget {
  const HrisLoginView({Key? key}) : super(key: key);

  Widget build(context, HrisLoginController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          Blur(
            blur: 6.0,
            blurColor: Colors.black,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1606857521015-7f9fcf423740?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Berandal",
                  style: GoogleFonts.satisfy(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "HRIS",
                  style: GoogleFonts.satisfy(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Human Resource Management System",
                  style: GoogleFonts.satisfy(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 52,
                  width: 240.0,
                  child: ElevatedButton.icon(
                    icon: const Icon(MdiIcons.google),
                    label: const Text("Login by Google"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.doLoginByGoogle(),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 52,
                  width: 240.0,
                  child: ElevatedButton.icon(
                    icon: const Icon(MdiIcons.phone),
                    label: const Text(
                      "Login by Phone number",
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      GoRouter.of(context).go("/hris_phone_login");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<HrisLoginView> createState() => HrisLoginController();
}
