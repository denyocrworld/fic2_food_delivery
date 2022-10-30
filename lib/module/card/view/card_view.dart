import 'package:example/core.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  Widget build(context, CardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Card"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ExCard(
                      title: "Basic",
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 24.0,
                          ),
                        ),
                      ],
                      bottomActions: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.save),
                          label: const Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                      children: const [],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ExCard(
                      title: "Basic",
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 24.0,
                          ),
                        ),
                      ],
                      bottomActions: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.save),
                          label: const Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      ],
                      children: const [],
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
  State<CardView> createState() => CardController();
}
