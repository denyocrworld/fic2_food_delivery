import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgNavigationView extends StatefulWidget {
  const CgNavigationView({Key? key}) : super(key: key);

  Widget build(context, CgNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CgNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SnippetContainer("navpush"),
              Text(
                """
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Container()),
);
"""
                    .trim(),
              ),
              const SnippetContainer("navback"),
              Text(
                """
Navigator.pop(context);
"""
                    .trim(),
              ),
              const SnippetContainer("navreplace"),
              Text(
                """
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => Container()),
);
"""
                    .trim(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CgNavigationView> createState() => CgNavigationController();
}
