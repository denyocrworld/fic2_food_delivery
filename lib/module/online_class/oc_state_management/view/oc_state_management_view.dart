import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class OcStateManagementView extends StatefulWidget {
  const OcStateManagementView({Key? key}) : super(key: key);

  Widget build(context, OcStateManagementController controller) {
    controller.view = this;

    List menuList = [
      {
        'label': 'Counter',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmCounterView(),
      },
      {
        'label': 'Loading',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmLoadingView(),
      },
      {
        'label': 'Visibility',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmVisibilityView(),
      },
      {
        'label': 'Enabled/Disabled',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmEnabledOrDisabledView(),
      },
      {
        'label': 'Basic Animation',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmBasicAnimationView(),
      },
      {
        'label': 'Scale Animation',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmScaleAnimationView(),
      },
      {
        'label': 'Rotate Animation',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmRotateAnimationView(),
      },
      {
        'label': 'Fade Animation',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmFadeAnimationView(),
      },
      {
        'label': 'Digital Clock',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmDigitalClockView(),
      },
      {
        'label': 'Horizontal Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmHorizontalCategoryListView(),
      },
      {
        'label': 'Vertical Category List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmVerticalCategoryListView(),
      },
      {
        'label': 'Category in Wrap',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmCategoryInWrapView(),
      },
      {
        'label': 'Cart',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmCartView(),
      },
      {
        'label': 'CRUD',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmCrudView(),
      },
      {
        'label': 'Filter List',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmFilterListView(),
      },
      {
        'label': 'Navigation',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmNavigationView(),
      },
      {
        'label': 'Scroll',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmScrollView(),
      },
      {
        'label': 'Theme',
        'icon': MdiIcons.keyboardOutline,
        'color': Colors.blue,
        'page': const SmThemeView(),
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
  State<OcStateManagementView> createState() => OcStateManagementController();
}
