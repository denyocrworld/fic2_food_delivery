import 'package:flutter/material.dart';
import 'package:fhe_template/_/scaffold/scaffold.dart';
import 'package:fhe_template/_/scaffold/scaffold_drawer.dart';
import 'package:fhe_template/_/scaffold/scaffold_image.dart';
import 'package:fhe_template/_/scaffold/scaffold_ovo.dart';
import 'package:fhe_template/_/scaffold/scaffold_simple.dart';
import 'package:fhe_template/_/scaffold/scaffold_sliver_appbar.dart';
import 'package:fhe_template/_/scaffold/scaffold_tabbar_vertical.dart';
import 'package:get/get.dart';

import '../navigation/navigation_vertical.dart';
import '../navigation/navigation_vertical_icon.dart';

class TemplateScaffoldMainNavigationView extends StatelessWidget {
  const TemplateScaffoldMainNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold",
                      "onTap": () => Get.to(const TemplateScaffold()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Simple",
                      "onTap": () => Get.to(const TemplateScaffoldSimple()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Ovo",
                      "onTap": () => Get.to(const TemplateScaffoldOvo()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Image",
                      "onTap": () => Get.to(const TemplateScaffoldImage()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Drawer",
                      "onTap": () => Get.to(const TemplateScaffoldDrawer()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Sliver Appbar",
                      "onTap": () =>
                          Get.to(const TemplateScaffoldSliverAppbar()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Scaffold Tabbar Vertical",
                      "onTap": () =>
                          Get.to(const TemplateScaffoldTabbarVertical()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Navigation Vertical",
                      "onTap": () => Get.to(const TemplateNavigationVertical()),
                    },
                    {
                      "icon": Icons.developer_board,
                      "label": "Navigation Vertical Icon",
                      "onTap": () =>
                          Get.to(const TemplateNavigationVerticalIcon()),
                    },
                  ];

                  return Wrap(
                    children: List.generate(
                      menus.length,
                      (index) {
                        var item = menus[index];

                        var size = constraint.biggest.width / 2;

                        return SizedBox(
                          width: size,
                          height: 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blueGrey,
                              animationDuration:
                                  const Duration(milliseconds: 1000),
                              backgroundColor: Colors.transparent,
                              splashFactory: InkSplash.splashFactory,
                              shadowColor: Colors.transparent,
                              elevation: 0.0,
                            ),
                            onPressed: () => item["onTap"](),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  item["icon"],
                                  color: Colors.blueGrey,
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "${item["label"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 8.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
