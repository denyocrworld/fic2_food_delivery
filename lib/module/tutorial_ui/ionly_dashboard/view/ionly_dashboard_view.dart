import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ionly_dashboard_controller.dart';

class IonlyDashboardView extends StatefulWidget {
  const IonlyDashboardView({Key? key}) : super(key: key);

  Widget build(context, IonlyDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ionly"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraint) {
                return Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: List.generate(controller.menuList.length, (index) {
                    var item = controller.menuList[index];
                    var size = (constraint.biggest.width - 16) / 2;
                    return Container(
                      height: size * 1.1,
                      width: size,
                      decoration: BoxDecoration(
                        color: item["color"],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      item["icon"],
                                      size: 36.0,
                                      color: Colors.white,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.arrow_circle_right,
                                      size: 24.0,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                Text(
                                  item["title"],
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "${item["item_count"]}",
                                  style: const TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  item["description"],
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -20,
                            bottom: -20,
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              radius: controller.getRandom(30, 50),
                            ),
                          ),
                          Positioned(
                            right: controller.getRandom(20, 40),
                            bottom: controller.getRandom(70, 100),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              radius: 14.0,
                            ),
                          ),
                          Positioned(
                            right: controller.getRandom(79, 100),
                            bottom: controller.getRandom(20, 60),
                            child: CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.2),
                              radius: 8.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IonlyDashboardView> createState() => IonlyDashboardController();
}
