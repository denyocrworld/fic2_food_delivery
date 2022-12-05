import 'package:flutter/material.dart';
import 'package:example/core.dart';

class ElnMainNavigationView extends StatefulWidget {
  const ElnMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, ElnMainNavigationController controller) {
    controller.view = this;

    return Theme(
      data: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[400],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.blueGrey[900],
          ),
          titleTextStyle: TextStyle(
            color: Colors.blueGrey[900],
          ),
        ),
        cardTheme: CardTheme(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(64.0),
          ),
        ),
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                color: Colors.green,
                child: IndexedStack(
                  index: controller.selectedIndex,
                  children: [
                    const ElnDashboardView(),
                    Container(
                      color: Colors.orange,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  top: 12.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  children: List.generate(controller.menu.length, (index) {
                    var item = controller.menu[index];
                    var isSelected = controller.selectedIndex == index;
                    return Expanded(
                      child: Column(
                        children: [
                          AnimatedRotation(
                            duration: const Duration(milliseconds: 600),
                            turns: (isSelected ? 360 : 0) / 360,
                            child: AnimatedScale(
                              duration: const Duration(milliseconds: 600),
                              scale: isSelected ? 1.3 : 1.0,
                              child: IconButton(
                                onPressed: () {
                                  controller.selectedIndex = index;
                                  controller.setState(() {});
                                },
                                icon: Icon(
                                  item["icon"],
                                  size: 20.0,
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.grey[700],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 4,
                            width: 40.0,
                            color:
                                !isSelected ? Colors.transparent : Colors.red,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ElnMainNavigationView> createState() => ElnMainNavigationController();
}
