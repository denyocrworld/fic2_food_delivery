import 'package:flutter/material.dart';
import '../../../core.dart';

class DialogUiView extends StatefulWidget {
  const DialogUiView({Key? key}) : super(key: key);

  Widget build(context, DialogUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DialogUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ExCard(title: "Snackbar Dialog", children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    snackbarInfo(message: "data1", duration: 1);
                  },
                ),
              ]),

              //body
              // var primaryColor = Colors.blueGrey[800]!;
              // var secondaryColor = const Color(0xFF2A2D3E);
              // var dangerColor = Colors.red[300]!;
              // var successColor = Colors.green[300]!;
              // var infoColor = Colors.blue[300]!;
              // var warningColor = Colors.orange[300]!;
              ExCard(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.8,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Basic Alert",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ExButton(
                              radius: 15,
                              label: "primary",
                              width: 100,
                              color: primaryColor,
                              onPressed: () {
                                snackbarPrimary(
                                    message:
                                        "primary - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "secondary",
                              width: 100,
                              color: secondaryColor,
                              onPressed: () {
                                snackbarSecondary(
                                    message:
                                        "secondary - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "danger",
                              width: 100,
                              color: dangerColor,
                              onPressed: () {
                                snackbarDanger(
                                    message:
                                        "danger - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "success",
                              width: 100,
                              color: successColor,
                              onPressed: () {
                                snackbarSuccess(
                                    message:
                                        "success - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "info",
                              width: 100,
                              color: infoColor,
                              onPressed: () {
                                snackbarInfo(
                                    message:
                                        "info - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "warning",
                              width: 100,
                              color: warningColor,
                              onPressed: () {
                                snackbarWarning(
                                    message:
                                        "warning - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //soft alert
              ExCard(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.8,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Soft Alert",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ExButton(
                              radius: 15,
                              label: "primary",
                              width: 100,
                              color: primaryColor,
                              onPressed: () {
                                snackbarSoftPrimary(
                                    message:
                                        "primary - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "secondary",
                              width: 100,
                              color: secondaryColor,
                              onPressed: () {
                                snackbarSoftSecondary(
                                    message:
                                        "secondary - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "danger",
                              width: 100,
                              color: dangerColor,
                              onPressed: () {
                                snackbarSoftDanger(
                                    message:
                                        "danger - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "success",
                              width: 100,
                              color: successColor,
                              onPressed: () {
                                snackbarSoftSuccess(
                                    message:
                                        "success - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "info",
                              width: 100,
                              color: infoColor,
                              onPressed: () {
                                snackbarSoftInfo(
                                    message:
                                        "info - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                          ExButton(
                              radius: 15,
                              label: "warning",
                              width: 100,
                              color: warningColor,
                              onPressed: () {
                                snackbarSoftWarning(
                                    message:
                                        "warning - A sample alert -- check it out!",
                                    duration: 1);
                              }),
                        ],
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

  @override
  State<DialogUiView> createState() => DialogUiController();
}
