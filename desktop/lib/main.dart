import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Widget mainView = Container();

  runApp(
    MaterialApp(
      navigatorKey: Get.navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
  const x = 2;
  const y = 23;

  Column(
    children: [
      const Text(
        "text",
        style: TextStyle(
          fontSize: 2.0,
        ),
      ),
      ExButton(
        label: "Save",
        color: primaryColor,
        onPressed: () {},
      ),
      Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.red[200],
          borderRadius: const BorderRadius.all(
            Radius.circular(
              16.0,
            ),
          ),
        ),
      ),
    ],
  );
}
