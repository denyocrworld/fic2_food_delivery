import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CgMainView extends StatefulWidget {
  const CgMainView({Key? key}) : super(key: key);

  Widget build(context, CgMainController controller) {
    controller.view = this;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isTablet = MediaQuery.of(context).size.width < 1100 &&
            MediaQuery.of(context).size.width >= 850;
        bool isDesktop = MediaQuery.of(context).size.width >= 1100;
        bool isMobile = MediaQuery.of(context).size.width < 850;

        CgMainService cgMainService = CgMainService();

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
                    width: isMobile ? Get.width : 340.0,
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
                                    InkWell(
                                      onTap: () =>
                                          Get.offAll(const TutorialDemoView()),
                                      child: Text(
                                        "Hyper UI",
                                        style: GoogleFonts.moonDance(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Write less do more~",
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
                                    menuList: cgMainService.promotionList,
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  // SideMenu(
                                  //   menuList: cgMainService.onlineClassExercises,
                                  //   title: "Online Class Exercises",
                                  // ),
                                  if (kDebugMode) ...[
                                    SideMenu(
                                      menuList:
                                          cgMainService.onlineClassMenuList,
                                      title: "Online Class",
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    SideMenu(
                                      menuList:
                                          cgMainService.onlineClassExercises,
                                      title: "Exercise",
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                  SideMenu(
                                    menuList: cgMainService.menuList,
                                    title: "Basic",
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SideMenu(
                                    menuList: cgMainService.uiMenuList,
                                    title: "Premade UI",
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SideMenu(
                                    menuList: cgMainService.slicingUiList,
                                    title: "Slicing UI",
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  SideMenu(
                                    menuList: cgMainService.hyperUiMenuList,
                                    title: "Hyper UI",
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  // SideMenu(
                                  //   menuList: cgMainService.demoAppList,
                                  //   title: "Full Apps Demo",
                                  // ),
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
                  if (!isMobile)
                    Expanded(
                      child: Container(
                        color: Theme.of(context).cardColor,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: SingleChildScrollView(
                          controller: ScrollController(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 12.0,
                                  horizontal: 12.0,
                                ),
                                constraints: const BoxConstraints(
                                  maxWidth: 400,
                                  minWidth: 300,
                                ),
                                child: controller.mainView,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  State<CgMainView> createState() => CgMainController();
}
