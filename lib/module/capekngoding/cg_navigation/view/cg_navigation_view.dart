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
              if (1 == 2)
                ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    //#TEMPLATE navpush
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Container()),
                    );
                    //#END

                    //#TEMPLATE navreplace
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Container()),
                    );
                    //#END

                    //#TEMPLATE navback
                    Navigator.pop(context);
                    //#END
                  },
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
