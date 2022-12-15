import 'package:flutter/material.dart';
import 'package:example/core.dart';

class FheMainNavigationView extends StatefulWidget {
  const FheMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FheMainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FheMainNavigation"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraint) {
                  List menus = [
                    {
                      "icon": MdiIcons.buttonCursor,
                      "label": "Button",
                      "view": const FheButtonView(),
                    },
                    {
                      "icon": MdiIcons.widgets,
                      "label": "Item Widget",
                      "view": const FheItemView(),
                    },
                    {
                      "icon": MdiIcons.navigation,
                      "label": "Bottom Navigation",
                      "view": const FheBottomNavigationView(),
                    },
                    {
                      "icon": MdiIcons.formatSize,
                      "label": "Form",
                      "view": const FheFormView(),
                    },
                    {
                      "icon": MdiIcons.formatSize,
                      "label": "Form (Reuseable Widget)",
                      "view": const FheFormReuseableWidgetView(),
                    },
                  ];
                  return Wrap(
                    children: List.generate(
                      menus.length,
                      (index) {
                        var item = menus[index];
                        var size = constraint.biggest.width / 4;
                        return SizedBox(
                          width: size,
                          height: size,
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
                            onPressed: () {
                              Get.to(item["view"]);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  item["icon"],
                                  color: CurrentTheme.textColor,
                                  size: 40.0,
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "${item["label"]}",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.visible,
                                  style: const TextStyle(
                                    color: CurrentTheme.textColor,
                                    fontSize: 10.0,
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
            ),
            const Spacer(),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1544928147-79a2dbc1f389?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Komunitas",
                            style: GoogleFonts.oswald(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "https://tinyurl.com/join-berandal",
                            style: GoogleFonts.oswald(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 80.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1588196749597-9ff075ee6b5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kelas Online",
                            style: GoogleFonts.oswald(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "https://capekngoding.com",
                            style: GoogleFonts.oswald(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FheMainNavigationView> createState() => FheMainNavigationController();
}
