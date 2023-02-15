import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialListView extends StatefulWidget {
  const TutorialListView({Key? key}) : super(key: key);

  Widget build(context, TutorialListController controller) {
    controller.view = this;
    ElvService elvService = ElvService();

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialList"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: elvService.menus.length,
                itemBuilder: (context, index) {
                  var item = elvService.menus[index];
                  return ListTile(
                    onTap: () => Get.offAll(item["view"]),
                    title: Text(item["label"]),
                    trailing: const Icon(
                      Icons.chevron_right,
                      size: 24.0,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialListView> createState() => TutorialListController();
}
