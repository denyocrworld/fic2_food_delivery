import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ExLayoutView extends StatefulWidget {
  const ExLayoutView({Key? key}) : super(key: key);

  Widget build(context, ExLayoutController controller) {
    controller.view = this;

    List menuList = [
      {
        'label': 'Login 1',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlLogin1View(),
      },
      {
        'label': 'Login 2',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlLogin2View(),
      },
      {
        'label': 'Signup 1',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlSignup1View(),
      },
      {
        'label': 'Signup 2',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlSignup1View(),
      },
      {
        'label': 'Dashboard 1',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlDashboard1View(),
      },
      {
        'label': 'Dashboard 2',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const ExlDashboard2View(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("OcStateManagement"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: menuList.length,
                itemBuilder: (context, index) {
                  var item = menuList[index];
                  var number = index + 1;
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Get.to(item["page"]);
                      },
                      title: Text(
                        "$number. ${item["label"]}",
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
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
  State<ExLayoutView> createState() => ExLayoutController();
}
