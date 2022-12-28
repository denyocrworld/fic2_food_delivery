import 'package:example/shared/theme/scheduler_theme.dart';
import 'package:flutter/material.dart';
import 'package:example/core.dart';

class ScScheduleView extends StatefulWidget {
  const ScScheduleView({Key? key}) : super(key: key);

  Widget build(context, ScScheduleController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                SafeArea(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: controller.isOpen ? 80 : 20,
                    color: SchedulerTheme.primaryColor,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 12.0,
                        ),
                        if (controller.isOpen)
                          IconButton(
                            onPressed: () => Get.back(),
                            icon: const Icon(
                              Icons.dashboard,
                              size: 28.0,
                              color: Colors.white,
                            ),
                          ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Column(
                          children: List.generate(8, (index) {
                            bool selected = index == 2;
                            var d = DateFormat("EEEE").format(
                              DateTime.now().add(
                                Duration(days: index),
                              ),
                            )[0];
                            if (!controller.isOpen) return Container();
                            return Card(
                              color: selected
                                  ? const Color(0xffeaab43)
                                  : const Color(0xff454952),
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: Center(
                                  child: Text(
                                    d,
                                    style: TextStyle(
                                      color: selected
                                          ? SchedulerTheme.textColor
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  left: controller.isOpen ? 70 : 0,
                  top: 200.0,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 400),
                    opacity: controller.isOpen ? 1.0 : 0.0,
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 100),
                      turns: -45 / 360,
                      child: Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                        child: const Icon(
                          Icons.circle,
                          size: 12.0,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  left: controller.isOpen ? 0.0 : -58,
                  bottom: 200.0,
                  child: InkWell(
                    onTap: () => controller.updateNavigationState(),
                    child: AnimatedRotation(
                      duration: const Duration(milliseconds: 100),
                      turns: -90 / 360,
                      child: Container(
                        transform: Matrix4.translationValues(0.0, 40, 0),
                        decoration: const BoxDecoration(
                          color: SchedulerTheme.primaryColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              6.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            AnimatedRotation(
                              duration: const Duration(milliseconds: 100),
                              turns: 90 / 360,
                              child: Icon(
                                controller.isOpen
                                    ? Icons.chevron_left
                                    : Icons.chevron_right,
                                color: Colors.white,
                                size: 18.0,
                              ),
                            ),
                            const Text(
                              "  Schedule  ",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 400),
                  left: controller.isOpen ? 90 : 50,
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Wed",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Dec 12",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "12",
                              style: TextStyle(
                                fontSize: 42.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          controller.isOpen ? "Schedule" : "Task",
                          style: const TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        //ALT+SHIFT+V
                        if (controller.isOpen)
                          Expanded(
                            child: ListView.builder(
                              itemCount: controller.taskList.length,
                              itemBuilder: (context, index) {
                                var item = controller.taskList[index];
                                return Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 16.0,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${item["start"]}",
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6.0,
                                          ),
                                          Text(
                                            "${item["end"]}",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[600],
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 16.0,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(12.0),
                                          decoration: BoxDecoration(
                                            color: item["color"],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(
                                                16.0,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              ListTile(
                                                contentPadding:
                                                    const EdgeInsets.all(0.0),
                                                title: Text(
                                                  item["title"],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                subtitle: Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 4.0,
                                                  ),
                                                  child: Text(
                                                    item["subtitle"],
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                trailing: const Icon(
                                                  Icons.chevron_right,
                                                  size: 24.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 60.0,
                                                    child: Stack(
                                                      children: const [
                                                        CircleAvatar(
                                                          radius: 12.0,
                                                          backgroundImage:
                                                              NetworkImage(
                                                            "https://i.ibb.co/PGv8ZzG/me.jpg",
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 15,
                                                          child: CircleAvatar(
                                                            radius: 12.0,
                                                            backgroundImage:
                                                                NetworkImage(
                                                              "https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 30,
                                                          child: CircleAvatar(
                                                            radius: 12.0,
                                                            backgroundImage:
                                                                NetworkImage(
                                                              "https://i.ibb.co/GJntbjg/photo-1664382951821-8151535191e5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 12.0,
                                                  ),
                                                  const Expanded(
                                                    child: Text(
                                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                        if (!controller.isOpen)
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  //Alt+shift+H
                                  SizedBox(
                                    height: 80.0,
                                    child: ListView.builder(
                                      itemCount: 10,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        var selected = index == 2;
                                        var now = DateTime.now();
                                        now = now.add(Duration(days: index));
                                        var d =
                                            DateFormat("EEEE").format(now)[0];
                                        var date = DateFormat("d").format(now);
                                        return Container(
                                          margin: const EdgeInsets.only(
                                            right: 6.0,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 6.0,
                                            horizontal: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: selected
                                                ? Colors.orange
                                                : Colors.transparent,
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(
                                                6.0,
                                              ),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                d,
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: !selected
                                                      ? SchedulerTheme.textColor
                                                      : Colors.white,
                                                ),
                                              ),
                                              Text(
                                                date,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: !selected
                                                      ? SchedulerTheme.textColor
                                                      : Colors.white,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8.0,
                                              ),
                                              if (selected)
                                                const Icon(
                                                  Icons.circle,
                                                  color: Colors.white,
                                                  size: 8.0,
                                                ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  //Alt+Shift+V
                                  Expanded(
                                    child: ListView.builder(
                                      itemCount: controller.taskList.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        var item = controller.taskList[index];
                                        return Container(
                                          padding: const EdgeInsets.all(16.0),
                                          margin: const EdgeInsets.only(
                                            bottom: 16.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: item["color"],
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(
                                                16.0,
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${item["title"]}",
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                        fontSize: 26.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${item["subtitle"]}",
                                                      style: const TextStyle(
                                                        fontSize: 14.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Checkbox(
                                                value: true,
                                                onChanged: (value) {},
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
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
    );
  }

  @override
  State<ScScheduleView> createState() => ScScheduleController();
}
