import 'package:badges/badges.dart';
import 'package:example/core.dart';
import 'package:example/shared/widget/badge_text/badge_text.dart';
import 'package:flutter/material.dart';

class BadgeUiView extends StatefulWidget {
  const BadgeUiView({Key? key}) : super(key: key);

  Widget build(context, BadgeUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BadgeUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ExCard(
                color: Colors.white,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "h1.Example heading",
                            style: TextStyle(
                              color: textColor1,
                              fontSize: fs1,
                            ),
                          ),
                          BadgeText(backgroundColor: textColor1)
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "h2.Example heading",
                            style: TextStyle(
                              color: textColor1,
                              fontSize: fs2,
                            ),
                          ),
                          Badge(
                            child: SizedBox(
                              height: hmd,
                              width: 100.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      successColor.withOpacity(0.3),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                    fontSize: fs2,
                                    color: successColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "h3.Example heading",
                            style: TextStyle(
                              color: textColor1,
                              fontSize: fs3,
                            ),
                          ),
                          Badge(
                            child: SizedBox(
                              height: hsm,
                              width: 80.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: infoColor,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "New",
                                  style: TextStyle(
                                    fontSize: fs3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "h4.Example heading",
                            style: TextStyle(
                              color: textColor1,
                              fontSize: fs4,
                            ),
                          ),
                          Badge(
                            child: SizedBox(
                              height: hsm,
                              width: 120.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: infoColor.withOpacity(0.3),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Info Link",
                                  style: TextStyle(
                                    fontSize: fs4,
                                    color: infoColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "h5.Example heading",
                            style: TextStyle(
                              color: textColor1,
                              fontSize: fs5,
                            ),
                          ),
                          Badge(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: warningColor,
                                ),
                              ),
                              height: hsm,
                              width: 120.0,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Info Link",
                                  style: TextStyle(
                                    fontSize: fs5,
                                    color: infoColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BadgeUiView> createState() => BadgeUiController();
}
