import 'package:example/core.dart';
import 'package:example/module/style_guide/widget/color_widget.dart';
import 'package:flutter/material.dart';

class StyleGuideView extends StatefulWidget {
  const StyleGuideView({Key? key}) : super(key: key);

  Widget build(context, StyleGuideController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("StyleGuide"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ExCard(
                          title: "Base Color",
                          children: [
                            Row(
                              children: [
                                ColorWidget(
                                  color: successColor,
                                  name: "successColor",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                ColorWidget(
                                  color: warningColor,
                                  name: "warningColor",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                ColorWidget(
                                  color: dangerColor,
                                  name: "dangerColor",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                ColorWidget(
                                  color: infoColor,
                                  name: "infoColor",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                ColorWidget(
                                  color: primaryColor,
                                  name: "primaryColor",
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                ColorWidget(
                                  color: disabledColor,
                                  name: "disabledColor",
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        ExCard(
                          title: "Scale",
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Extra Small",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 8.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 40,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Small",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 8.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Expanded(
                    child: ExCard(
                      title: "Heading",
                      children: [
                        Text(
                          "Heading H1",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Heading h2",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Heading h3",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Heading h4",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Heading h5",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Heading h6",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
  State<StyleGuideView> createState() => StyleGuideController();
}
