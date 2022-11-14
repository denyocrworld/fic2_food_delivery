import 'package:flutter/material.dart';
import 'package:example/core.dart';

/*
KITA START 7:30 YAA!
FRAMEWORK: FLUTTER
BAHASA: DART
----
- State Management
- Form

DART itu:
- Backend
- Frontend
  Android, IOS, Windows, Mac, Linux, Web
*/

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

  header(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(Get.currentContext).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget build(context, TrController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial View"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Dialog"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black12,
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      );
                      return const AlertDialog(
                        title: Text('Info'),
                        insetPadding: EdgeInsets.zero,
                        contentPadding: EdgeInsets.all(0.0),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              header("State Management"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.items.length,
                    (index) {
                      var item = controller.items[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                      );
                    },
                  ),
                );
              }),
              const SizedBox(
                height: 20.0,
              ),
              header("Form"),
              LayoutBuilder(builder: (context, constraints) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(
                    controller.formItems.length,
                    (index) {
                      var item = controller.formItems[index];
                      var size = (constraints.biggest.width - (10 * 3)) / 4;
                      return TutorialNavigationItem(
                        item: item,
                        size: size,
                        index: index,
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
