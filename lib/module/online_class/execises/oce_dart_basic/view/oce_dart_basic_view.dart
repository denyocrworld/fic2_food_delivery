import 'package:example/module/online_class/execises/oce_dart_basic/service/oce_dart_basic_service.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class OceDartBasicView extends StatefulWidget {
  const OceDartBasicView({Key? key}) : super(key: key);

  Widget build(context, OceDartBasicController controller) {
    controller.view = this;
    var hotkeys = OceDartBasicService().hotkeys;

    return Scaffold(
      appBar: AppBar(
        title: const Text("OceDartBasic"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 30.0,
                      child: Text(
                        "#",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  hotkeys.length,
                  (index) {
                    var item = hotkeys[index];
                    var number = index + 1;
                    return Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30.0,
                            child: Text(
                              "$number",
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Text(
                              item["description"],
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Row(
                              children: List.generate(
                                item["exercises"]?.length ?? 0,
                                (index) {
                                  var retVal =
                                      item["exercises"][index]["detail"]();
                                  bool correct = item["exercises"][index]
                                          ["correct_value"](retVal) ??
                                      false;

                                  return Container(
                                    margin: const EdgeInsets.only(
                                      right: 6.0,
                                    ),
                                    child: CircleAvatar(
                                      radius: correct ? 9.0 : 7.0,
                                      backgroundColor:
                                          correct ? Colors.green : Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OceDartBasicView> createState() => OceDartBasicController();
}
