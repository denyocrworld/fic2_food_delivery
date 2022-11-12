import 'package:flutter/material.dart';
import 'package:example/core.dart';

class ProfileUiExampleView extends StatefulWidget {
  const ProfileUiExampleView({Key? key}) : super(key: key);

  Widget build(context, ProfileUiExampleController controller) {
    controller.view = this;
    // https://tinyurl.com/deny-gmeet
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        // title: const Text("ProfileUiExample"),
        actions: const [],
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 80.0,
        padding: const EdgeInsets.all(12.0),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 0.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: const BorderRadius.all(
              Radius.circular(60.0),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.updateView(0);
                  },
                  child: CircleAvatar(
                    backgroundColor: controller.selectedIndex == 0
                        ? Colors.blue
                        : Colors.transparent,
                    child: const Icon(Icons.person),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.updateView(1);
                  },
                  child: CircleAvatar(
                    backgroundColor: controller.selectedIndex == 1
                        ? Colors.blue
                        : Colors.transparent,
                    child: const Icon(Icons.restaurant),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.updateView(2);
                  },
                  child: CircleAvatar(
                    backgroundColor: controller.selectedIndex == 2
                        ? Colors.blue
                        : Colors.transparent,
                    child: const Icon(Icons.map),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.updateView(3);
                  },
                  child: CircleAvatar(
                    backgroundColor: controller.selectedIndex == 3
                        ? Colors.blue
                        : Colors.transparent,
                    child: const Icon(Icons.qr_code),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    controller.updateView(4);
                  },
                  child: CircleAvatar(
                    backgroundColor: controller.selectedIndex == 4
                        ? Colors.blue
                        : Colors.transparent,
                    child: const Icon(Icons.chat_bubble),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Container(
              height: 100.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileUiExampleView> createState() => ProfileUiExampleController();
}
