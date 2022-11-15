import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../controller/dashboard_todo_list_controller.dart';

class DashboardTodoListView extends StatefulWidget {
  const DashboardTodoListView({Key? key}) : super(key: key);

  Widget build(context, DashboardTodoListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("DashboardTodoList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //body
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Deny Ocr",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "denyocr.world@gmail.com",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Badge(
                    badgeContent: const Text(
                      '14',
                      style: TextStyle(
                        fontSize: 8.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Icon(Icons.notifications),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                  horizontal: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[500],
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Find your task",
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Project Summary",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),

              //Alt+Shift+H
              SizedBox(
                height: 240.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 240.0,
                      width: 200,
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.blue[200]!,
                            Colors.blue[900]!,
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      4.0,
                                    ),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 16.0,
                                ),
                              ),
                              const Spacer(),
                              const CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 42.0,
                                child: Icon(
                                  Icons.bar_chart,
                                  size: 42.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            "12",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "In progress project",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "In Progress",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                      child: FittedBox(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text("Add task"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //capr
              //alt+shift+v
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = {};
                  double todoProgress = Random().nextInt(100) / 100;

                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  12.0,
                                ),
                              ),
                            ),
                            child: const Icon(
                              Icons.developer_board,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "ECommerce Project",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          const CircleAvatar(
                                            radius: 12.0,
                                            backgroundImage: NetworkImage(
                                              "https://i.ibb.co/PGv8ZzG/me.jpg",
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 16.0,
                                            ),
                                            child: const CircleAvatar(
                                              radius: 12.0,
                                              backgroundImage: NetworkImage(
                                                "https://i.ibb.co/qWWtXxD/photo-1576570734316-e9d0317d7384-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 32.0,
                                            ),
                                            child: const CircleAvatar(
                                              radius: 12.0,
                                              child: Text(
                                                "2+",
                                                style: TextStyle(
                                                  fontSize: 8.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.chat_bubble,
                                            size: 12.0,
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            "${Random().nextInt(200)}",
                                            style: const TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: CircularProgressIndicator(
                                    value: todoProgress,
                                    color: Colors.orange,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "${(todoProgress * 100).toStringAsFixed(0)}%",
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardTodoListView> createState() => DashboardTodoListController();
}
