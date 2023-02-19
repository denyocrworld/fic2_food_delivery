// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkFullAppsExerciseView extends StatelessWidget {
  const FbkFullAppsExerciseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              getContainer(
                title: "Food Delivery Apps - (FD)",
                children: [
                  getGrid(
                    title: "Start",
                    children: [
                      getMenu(
                        label: "Full Demo",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Getting Started",
                    children: [
                      getMenu(
                        label: "Splash",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Intro",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Auth",
                    children: [
                      getMenu(
                        label: "Login",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Navigation",
                    children: [
                      getMenu(
                        label: "Main Navigation",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Main View",
                    children: [
                      getMenu(
                        label: "Dashboard",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Order",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Favorite",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Profile",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "List",
                    children: [
                      getMenu(
                        label: "Food List",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Detail",
                    children: [
                      getMenu(
                        label: "Product Detail",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Order Detail",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Transaction",
                    children: [
                      getMenu(
                        label: "Cart",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Checkout",
                        view: Container(),
                      ),
                    ],
                  ),
                  getGrid(
                    title: "Etc",
                    children: [
                      getMenu(
                        label: "TOS",
                        view: Container(),
                      ),
                      getMenu(
                        label: "Privacy policy",
                        view: Container(),
                      ),
                      getMenu(
                        label: "About Us",
                        view: Container(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
