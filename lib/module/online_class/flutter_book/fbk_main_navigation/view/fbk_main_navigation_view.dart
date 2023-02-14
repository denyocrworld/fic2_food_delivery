import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  getTitle({
    required String title,
  }) {
    return Container(
      width: MediaQuery.of(Get.currentContext).size.width,
      padding: const EdgeInsets.all(12.0),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  getMenu({
    required String label,
    required Widget view,
    bool disabled = false,
  }) {
    bool isFlutter = label.toLowerCase().contains("flutter");
    double size = (MediaQuery.of(Get.currentContext).size.width - 60) / 2;

    return InkWell(
      onTap: () {
        if (disabled) return;
        Get.to(view);
      },
      child: Container(
        width: size,
        height: size,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0,
        ),
        decoration: BoxDecoration(
          color: disabled ? Colors.grey : Colors.orange,
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 24,
              offset: Offset(0, 11),
            ),
          ],
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: disabled ? Colors.grey[900] : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  getGrid({
    required List<Widget> children,
    required String title,
  }) {
    return Column(
      children: [
        getTitle(title: title),
        GridView(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3.0,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: children,
        ),
      ],
    );
  }

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Book"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              getGrid(
                title: "The Basic",
                children: [
                  getMenu(
                    label: "WPM",
                    view: const FbkWpmView(),
                  ),
                ],
              ),
              getGrid(
                title: "Dart Basic",
                children: [
                  getMenu(
                    label: "Variable",
                    view: const FbkDartVariableView(),
                  ),
                  getMenu(
                    label: "Symbol",
                    view: const FbkDartSymbolView(),
                  ),
                  getMenu(
                    label: "String",
                    view: const FbkDartStringView(),
                  ),
                  getMenu(
                    label: "Number",
                    view: const FbkDartNumberView(),
                  ),
                  getMenu(
                    label: "DateTime",
                    view: const FbkDartDatetimeView(),
                  ),
                  getMenu(
                    label: "IF Statement",
                    view: const FbkDartIfStatementView(),
                  ),
                  getMenu(
                    label: "List & Map",
                    view: const FbkDartListAndMapView(),
                  ),
                  getMenu(
                    label: "Regex",
                    view: const FbkDartRegexView(),
                  ),
                  getMenu(
                    label: "Encode and Decode",
                    disabled: true,
                    view: const FbkDartEncodeAndDecodeView(),
                  ),
                  getMenu(
                    label: "Model",
                    disabled: true,
                    view: const FbkDartModelView(),
                  ),
                  getMenu(
                    label: "Service",
                    disabled: true,
                    view: const FbkDartServiceView(),
                  ),
                  getMenu(
                    label: "Date Util",
                    disabled: true,
                    view: const FbkDartDateUtilView(),
                  ),
                  getMenu(
                    label: "String Util",
                    disabled: true,
                    view: const FbkDartStringView(),
                  ),
                ],
              ),
              getGrid(title: "Flutter - Overflow Handling", children: [
                getMenu(
                  label: "Eoh1",
                  disabled: true,
                  view: const Elv1View(),
                ),
              ]),
              getGrid(title: "UI PRO - Overflow Handling", children: [
                getMenu(
                  label: "Dribbble",
                  disabled: true,
                  view: const Elv1View(),
                ),
              ]),
              getGrid(
                title: "State Management",
                children: [
                  getMenu(
                    label: "Elv1",
                    disabled: true,
                    view: const Elv1View(),
                  ),
                ],
              ),
              getGrid(
                title: "Local Storage",
                children: [
                  getMenu(
                    label: "Elv1",
                    disabled: true,
                    view: const Elv1View(),
                  ),
                ],
              ),
              getGrid(
                title: "Firebase",
                children: [
                  getMenu(
                    label: "Elv1",
                    disabled: true,
                    view: const Elv1View(),
                  ),
                ],
              ),
              getGrid(
                title: "Latihan Layout",
                children: [
                  getMenu(
                    label: "Elv1",
                    view: const Elv1View(),
                  ),
                  getMenu(
                    label: "Elv2",
                    view: const Elv2View(),
                  ),
                  getMenu(
                    label: "Elv3",
                    view: const Elv3View(),
                  ),
                  getMenu(
                    label: "Elv4",
                    view: const Elv4View(),
                  ),
                  getMenu(
                    label: "Elv5",
                    view: const Elv5View(),
                  ),
                  getMenu(
                    label: "Elv6",
                    view: const Elv6View(),
                  ),
                  getMenu(
                    label: "Elv7",
                    view: const Elv7View(),
                  ),
                  getMenu(
                    label: "Elv8",
                    view: const Elv8View(),
                  ),
                  getMenu(
                    label: "Elv9",
                    view: const Elv9View(),
                  ),
                  getMenu(
                    label: "Elv9",
                    view: const Elv9View(),
                  ),
                  getMenu(
                    label: "Elv10",
                    view: const Elv10View(),
                  ),
                ],
              ),
              const SizedBox(
                height: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FbkMainNavigationView> createState() => FbkMainNavigationController();
}
