import 'package:example/_/scaffold/scaffold_bottom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../../../../_/scaffold/scaffold_tabbar_vertical.dart';

class CgMainView extends StatefulWidget {
  const CgMainView({Key? key}) : super(key: key);

  Widget build(context, CgMainController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 340.0,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor.withOpacity(0.6),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              ],
                            ),
                          ),
                          Switch(
                            value: controller.lightMode,
                            onChanged: (value) {
                              controller.updateTheme();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false),
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          child: Column(
                            children: [
                              SideMenu(
                                menuList: CgMainService.promotionList,
                              ),
                              const SizedBox(
                                height: 12.0,
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
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "© CapekNgoding.com",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
    );
    return const TemplateScaffoldBottomNavigationBar();
    return const TemplateScaffoldTabbarHorizontal();
  }

  @override
  State<CgMainView> createState() => CgMainController();
}
