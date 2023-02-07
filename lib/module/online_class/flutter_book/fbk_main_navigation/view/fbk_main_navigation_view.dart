import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class FbkMainNavigationView extends StatefulWidget {
  const FbkMainNavigationView({Key? key}) : super(key: key);

  getMenu({
    required String label,
    required Widget view,
  }) {
    bool isFlutter = label.toLowerCase().contains("flutter");
    return Container(
      width: MediaQuery.of(Get.currentContext).size.width,
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isFlutter ? Colors.blue[800] : Colors.blue,
        ),
        onPressed: () => Get.to(view),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
            )
          ],
        ),
      ),
    );
  }

  Widget build(context, FbkMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Book"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dart Basic",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            getMenu(
              label: "Dart - Variable",
              view: const FbkDartVariableView(),
            ),
            getMenu(
              label: "Dart - Symbol",
              view: const FbkDartSymbolView(),
            ),
            getMenu(
              label: "Dart - String",
              view: const FbkDartStringView(),
            ),
            getMenu(
              label: "Dart - Number",
              view: const FbkDartNumberView(),
            ),
            getMenu(
              label: "Dart - DateTime",
              view: const FbkDartDatetimeView(),
            ),
            getMenu(
              label: "Dart - List & Map",
              view: const FbkDartListAndMapView(),
            ),
            getMenu(
              label: "Dart - Regex",
              view: const FbkDartRegexView(),
            ),
            getMenu(
              label: "Dart - Encode and Decode",
              view: const FbkDartEncodeAndDecodeView(),
            ),
            getMenu(
              label: "Dart - Model",
              view: const FbkDartModelView(),
            ),
            getMenu(
              label: "Dart - Service",
              view: const FbkDartServiceView(),
            ),
            getMenu(
              label: "Dart - Date Util",
              view: const FbkDartDateUtilView(),
            ),
            getMenu(
              label: "Dart - String Util",
              view: const FbkDartStringView(),
            ),
            getMenu(
              label: "Flutter - Common Widget",
              view: const FbkFlutterCommonWidgetView(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Flutter Basic",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FbkMainNavigationView> createState() => FbkMainNavigationController();
}
