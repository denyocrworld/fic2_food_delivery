import 'package:example/core.dart';
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
          Row(
            children: [
              "Context".card([
                const Text(
                  "globalContext",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "You can use this variable to create a ui that requires context. In order for the implementation to be contextless. Usually used for dualog, bottomsheet and other similar ui.",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  "mq",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "You can use this variable to get MediaQuery.of(context)",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  "mqs",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "You can use this variable to get MediaQuery.of(context).size",
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ]).expanded(),
            ],
          ),
          "Base Color".card([
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
          ]),
          "Base Text Color".card([
            Row(
              children: [
                ColorWidget(
                  color: textColor1,
                  name: "textColor1",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: textColor2,
                  name: "textColor2",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: textColor3,
                  name: "textColor3",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: textColor4,
                  name: "textColor4",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: textColor5,
                  name: "textColor5",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: textColor6,
                  name: "textColor6",
                ),
              ],
            ),
          ]),
          "Icon Color".card([
            Row(
              children: [
                ColorWidget(
                  color: iconColor1,
                  name: "iconColor1",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: iconColor2,
                  name: "iconColor2",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: iconColor3,
                  name: "iconColor3",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: iconColor4,
                  name: "iconColor4",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: iconColor5,
                  name: "iconColor5",
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: iconColor6,
                  name: "iconColor6",
                ),
              ],
            ),
          ]),
          "Base Height".card([
            Row(
              children: [
                ColorWidget(
                  color: infoColor,
                  name: "hxs",
                  label: hxs,
                  height: hxs,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "hsm",
                  label: hsm,
                  height: hsm,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "hmd",
                  label: hmd,
                  height: hmd,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "hlg",
                  label: hlg,
                  height: hlg,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "hxl",
                  label: hxl,
                  height: hxl,
                ),
              ],
            ),
          ]),
          "Base Width".card([
            Row(
              children: [
                ColorWidget(
                  color: infoColor,
                  name: "wxs",
                  label: wxs,
                  width: wxs,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "wsm",
                  label: wsm,
                  width: wsm,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "wmd",
                  label: wmd,
                  width: wmd,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "wlg",
                  label: wlg,
                  width: wlg,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "wxl",
                  label: wxl,
                  width: wxl,
                ),
              ],
            ),
          ]),
          "Base Width by MediaQuery".card([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorWidget(
                  color: infoColor,
                  name: "w10",
                  label: w10,
                  width: w10,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w20",
                  label: w20,
                  width: w20,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w30",
                  label: w30,
                  width: w30,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w40",
                  label: w40,
                  width: w40,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w50",
                  label: w50,
                  width: w50,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w60",
                  label: w60,
                  width: w60,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w70",
                  label: w70,
                  width: w70,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w80",
                  label: w80,
                  width: w80,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w90",
                  label: w90,
                  width: w90,
                  height: 30.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "w100",
                  label: w100,
                  width: w100,
                  height: 30.0,
                ),
              ],
            ),
          ]),
          "Base Radius".card([
            Row(
              children: [
                ColorWidget(
                  color: infoColor,
                  name: "rxs",
                  label: rxs,
                  radius: rxs,
                  width: 90.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "rsm",
                  label: rsm,
                  radius: rsm,
                  width: 90.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "rmd",
                  label: rmd,
                  radius: rmd,
                  width: 90.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "rlg",
                  label: rlg,
                  radius: rlg,
                  width: 90.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                ColorWidget(
                  color: infoColor,
                  name: "rxl",
                  label: rxl,
                  radius: rxl,
                  width: 90.0,
                ),
              ],
            ),
          ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
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
              ).expanded(),
              const SizedBox(
                width: 12.0,
              ),
              Column(
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
              ).expanded(),
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
  Widget card(List<Widget> children) {
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

  Widget expanded() {
    return Expanded(
      child: this,
    );
  }
}
