<<<<<<< HEAD:lib/module/dev/heading_ui/view/heading_ui_view.dart

=======
>>>>>>> b5b206a3e8f6f394a9e0d9b7160786169dd9ded6:lib/module/heading_ui/view/heading_ui_view.dart
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class HeadingUiView extends StatefulWidget {
  const HeadingUiView({Key? key}) : super(key: key);

  Widget build(context, HeadingUiController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HeadingUi"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1("Heading 1 - H1"),
              H2("Heading 2 - H2"),
              H3("Heading 3 - H3"),
              H4("Heading 4 - H4"),
              H5("Heading 5 - H5"),
              H6("Heading 6 - H6"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HeadingUiView> createState() => HeadingUiController();
}
