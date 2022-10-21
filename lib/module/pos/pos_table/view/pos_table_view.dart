import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosTableView extends StatefulWidget {
  const PosTableView({Key? key}) : super(key: key);

  Widget build(context, PosTableController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosTable"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.next_plan),
              label: const Text("Next"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PosView()),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  LayoutBuilder(builder: (context, constraint) {
                    return Wrap(
                      runSpacing: 10.0,
                      spacing: 10.0,
                      children:
                          List.generate(controller.tables.length, (index) {
                        var item = controller.tables[index];
                        var size = (constraint.biggest.width - (10 * 4)) / 4;

                        bool isSelected = controller.selectedTable == item;
                        return InkWell(
                          onTap: () {
                            controller.selectedTable = item;
                            controller.update();
                          },
                          child: Container(
                            height: size,
                            width: size,
                            decoration: BoxDecoration(
                              color:
                                  isSelected ? Colors.green : Colors.grey[600],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  16.0,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "$item",
                                style: const TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PosTableView> createState() => PosTableController();
}
