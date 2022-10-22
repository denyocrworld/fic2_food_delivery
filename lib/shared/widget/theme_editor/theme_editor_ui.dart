import 'package:example/shared/widget/theme_editor/theme_editor.dart';
import 'package:flutter/material.dart';

class ThemeEditorUI extends StatelessWidget {
  const ThemeEditorUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Editor UI"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Change"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  ThemeEditor.change(0);
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Change"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  ThemeEditor.change(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
