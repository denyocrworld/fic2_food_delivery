import 'package:example/core.dart';
import 'package:example/shared/widget/_tutorial/checkbox.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Debug"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QCheckBox(
                label: "Programming Language",
                onChanged: (value) {},
                items: const [
                  {
                    "label": "Dart",
                    "value": 1,
                  },
                  {
                    "label": "Java",
                    "value": 2,
                  },
                  {
                    "label": "C#",
                    "value": 3,
                  },
                  {
                    "label": "Javascript",
                    "value": 4,
                  },
                ],
                value: const [1, 4, 3],
              ),
              QCheckBox(
                label: "Gender",
                onChanged: (value) {
                  print("value: ");
                },
                items: const [
                  {
                    "label": "Coding",
                    "value": 1,
                  },
                  {
                    "label": "Afk",
                    "value": 2,
                  },
                  {
                    "label": "E-Sport",
                    "value": 3,
                  },
                  {
                    "label": "Hacking",
                    "value": 4,
                  },
                  {
                    "label": "Hiking",
                    "value": 5,
                  }
                ],
                value: const [5, 4],
              ),
              const Divider(
                color: Colors.white,
              ),
              const Divider(
                color: Colors.white,
              ),
              const ExCheckBox(
                id: "my_hobby",
                label: "My Hobby",
                items: [
                  {
                    "label": "Coding",
                    "value": "Coding",
                  },
                  {
                    "label": "Afk",
                    "value": "Afk",
                  },
                  {
                    "label": "E-Sport",
                    "value": "E-Sport",
                  }
                ],
                value: [
                  "Coding",
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6.0,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text("Hello"),
                    ),
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6.0,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text("Hello"),
                    ),
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                title: const Text('Animate Slowly'),
                value: true,
                onChanged: (bool? value) {},
                secondary: const Icon(Icons.developer_board),
              ),
              CheckboxListTile(
                title: const Text('Animate Slowly'),
                value: true,
                onChanged: (bool? value) {},
                secondary: const Icon(Icons.developer_board),
              ),
              CheckboxListTile(
                title: const Text('Animate Slowly'),
                value: true,
                onChanged: (bool? value) {},
                secondary: const Icon(Icons.developer_board),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
