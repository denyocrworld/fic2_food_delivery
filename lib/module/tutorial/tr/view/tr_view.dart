import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TrView extends StatefulWidget {
  const TrView({Key? key}) : super(key: key);

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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "State Management",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
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
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            color: Colors.red,
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
              ListView.builder(
                itemCount: controller.items.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = controller.items[index];
                  return InkWell(
                    onTap: () {
                      Get.to(item!["view"]);
                    },
                    child: Card(
                      child: ListTile(
                        title: Text("${item["label"]}"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TrView> createState() => TrController();
}
