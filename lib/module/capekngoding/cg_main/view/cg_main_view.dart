import 'package:example/_/scaffold/scaffold_bottom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../../../../_/scaffold/scaffold_tabbar_vertical.dart';

class CgMainView extends StatefulWidget {
  const CgMainView({Key? key}) : super(key: key);

  Widget build(context, CgMainController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[600],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey[300]!,
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey[200],
                  width: 340.0,
                  padding: const EdgeInsets.all(12.0),
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Column(
                      children: [
                        Text(
                          "Hyper UI",
                          style: GoogleFonts.moonDance(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Write less do less~",
                          style: GoogleFonts.moonDance(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: CgMainService.menuList,
                          title: "Basic",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: CgMainService.uiMenuList,
                          title: "Premade UI",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: CgMainService.hyperUiMenuList,
                          title: "Hyper UI",
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SideMenu(
                          menuList: CgMainService.demoAppList,
                          title: "Full Apps Demo",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height,
                    child: controller.mainView,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return const TemplateScaffoldBottomNavigationBar();
    return const TemplateScaffoldTabbarHorizontal();
  }

  @override
  State<CgMainView> createState() => CgMainController();
}
