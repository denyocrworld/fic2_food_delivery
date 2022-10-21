import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:example/core.dart';
import 'package:example/shared/widget/card/card.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  doSave() async {}

  Widget build(context, DebugController controller) {
    controller.view = this;

    // return const ExScaffoldMenubar();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            child: const Text("Save"),
            onPressed: () {
              AwesomeNotifications().createNotification(
                content: NotificationContent(
                  id: 10,
                  channelKey: 'basic_channel',
                  title: 'Simple Notification',
                  body: 'Simple body',
                  actionType: ActionType.Default,
                ),
              );
            },
          ),
          H1("Firebase"),
          H2("Firebase"),
          H3("Firebase"),
          H4("Firebase"),
          H5("Firebase"),
          H6("Firebase"),
          ExCard(
            title: "Hello",
            icon: Icons.dashboard,
            padding: const EdgeInsets.all(10.0),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
            ],
            bottomActions: [
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text("Save"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.save),
                          label: const Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
            children: [
              Row(
                children: const [
                  Expanded(
                    child: ExTextField(
                      id: "first_name",
                      label: "First Name",
                      value: null,
                    ),
                  ),
                  Expanded(
                    child: ExTextField(
                      id: "last_name",
                      label: "Last Name",
                      value: null,
                    ),
                  ),
                ],
              ),
              const ExCombo(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
              const ExCombo(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
              const ExCheckBox(
                id: "my_hobby",
                label: "My Hobby",
                items: [
                  {
                    "label": "Coding",
                    "value": "Coding",
                  },
                  {
                    "label": "Afk",
                    "value": "Afk",
                  },
                  {
                    "label": "E-Sport",
                    "value": "E-Sport",
                  }
                ],
                value: [
                  "Coding",
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Icon(
                      Icons.developer_board,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: FittedBox(
                      child: Icon(
                        Icons.developer_board,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: FittedBox(
                      child: Icon(
                        Icons.developer_board,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 120.0,
                    child: FittedBox(
                      child: Icon(
                        Icons.developer_board,
                      ),
                    ),
                  ),
                ],
              ),
              const ExRating(
                id: "rating",
                label: "Rating",
                value: null,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                child: ExCard(
                  title: "Hello",
                  children: [],
                ),
              ),
              Expanded(
                child: ExCard(
                  title: "Hello",
                  children: [],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("Add"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ).xs,
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text("Save"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ).w100.xl,
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text("Save"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
          ).w100.xl,
        ],
      ).p20.scroll,
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}

getText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
    ),
  );
}

H1(String text) => getText(text, 30);
H2(String text) => getText(text, 24);
H3(String text) => getText(text, 20);
H4(String text) => getText(text, 18);
H5(String text) => getText(text, 16);
H6(String text) => getText(text, 14);

extension ButtonExtension on Widget {
  Widget get xs {
    return SizedBox(
      height: 30.0,
      child: this,
    );
  }

  Widget get w100 {
    return SizedBox(
      width: MediaQuery.of(Get.currentContext).size.width,
      child: this,
    );
  }

  Widget get xl {
    return SizedBox(
      height: 50.0,
      child: this,
    );
  }

  Widget get scroll {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: this,
    );
  }

  Widget getPadding(double size) {
    return Padding(
      padding: EdgeInsets.all(size),
      child: this,
    );
  }

  Widget get p10 => getPadding(10);
  Widget get p20 => getPadding(20);
  Widget get p30 => getPadding(30);

  Widget get scale15 {
    return Transform.scale(
      scale: 1.5,
      child: this,
    );
  }

  Widget get scale2 {
    return Transform.scale(
      scale: 2.0,
      child: this,
    );
  }

  Widget get scale3 {
    return Transform.scale(
      scale: 2.0,
      child: this,
    );
  }
}
