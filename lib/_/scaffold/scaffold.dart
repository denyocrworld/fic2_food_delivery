import 'package:flutter/material.dart';

class TemplateScaffold extends StatelessWidget {
  const TemplateScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //#GROUP_TEMPLATE scaffold
    sc

    if (1 != 2) {
      //#TEMPLATE scaffold
      return Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [],
            ),
          ),
        ),
      );
      //#END
    }

    //#TEMPLATE scaffoldc
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [],
        ),
      ),
    );
    //#END
  }
}
