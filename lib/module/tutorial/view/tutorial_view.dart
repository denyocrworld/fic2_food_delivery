import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: const Text("John doe"),
                subtitle: const Text("john.doe@gmail.com"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "5:34 PM",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        MdiIcons.pinOutline,
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                title: const Text("John doe"),
                subtitle: const Text("john.doe@gmail.com"),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "5:34 PM",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}

/*
MVC
- BLoC
- Provider
- Riverpod
- Getx
- setState

Getx
- MVC
- BLoc Architecture
- Riverpod Architecture
- Clean Architecture

Architecture
- MVC
- BLoc Architecture
- Riverpod Architecture
- Clean Architecture
- MVVM

State Management
- Getx
- Provider
- Riverpod


setState
---
View
  StatefulWidget
Controller
  State

Getx
---
View
  GetBuilder, GetView, StatelessWidget
Controller
  GetxController

Provider
---
View
  Stateless/full Widget
Controller
  ChangeNotifier

MVC
Login
LoginView
LoginController
*/
