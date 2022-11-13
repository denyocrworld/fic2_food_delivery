import 'package:flutter/material.dart';
import 'package:example/core.dart';

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
                      return InkWell(
                        onTap: () {
                          Get.to(item!["view"]);
                        },
                        child: Container(
                          width: size,
                          height: size,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${item["label"]}",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
              const SizedBox(
                height: 20.0,
              ),
              header("Form"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
