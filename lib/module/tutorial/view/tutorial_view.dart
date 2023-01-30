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
              const ListTile(
                title: Text("John doe"),
                trailing: Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.share),
                minLeadingWidth: 0.0,
                title: const Text("John doe"),
                trailing: SizedBox(
                  width: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("66"),
                      Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 160.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
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
                  children: const [
                    Positioned(
                      right: 10,
                      top: 10,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 12.0,
                        ),
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
