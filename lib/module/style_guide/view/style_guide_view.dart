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
      body: Column(
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
              Expanded(
                child: Column(
                  children: [
                    "Heading".card(
                      [
                        const Text(
                          "Heading H1",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Heading h2",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Heading h3",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Heading h4",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Heading h5",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Heading h6",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          "Typography".card([
            Text(
              "xxl",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            const Text(
              "xl",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const Text(
              "lg",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const Text(
              "md",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const Text(
              "sm",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            const Text(
              "xs",
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
          ]),
        ],
      ).scroll(),
    );
  }

  @override
  State<StyleGuideView> createState() => StyleGuideController();
}

extension CardExtension on String {
  card(List<Widget> children) {
    return ExCard(
      title: this,
      children: children,
    );
  }
}

extension BodyExtension on Widget {
  Widget scroll() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: this,
      ),
    );
  }

  Widget scrollNoPadding() {
    return SingleChildScrollView(
      child: this,
    );
  }
}
