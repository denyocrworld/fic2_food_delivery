import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controller/tab_list_controller.dart';

class TabListView extends StatefulWidget {
  const TabListView({Key? key}) : super(key: key);

  Widget build(context, TabListController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CardTemplate"),
          actions: const [],
          bottom: TabBar(
            tabs: [
              Tab(
                  icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Pending"),
                  const SizedBox(
                    width: 4.0,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("orders")
                        .where("status", isEqualTo: "Pending")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();

                      final count = snapshot.data!.docs.length;
                      if (count == 0) return Container();
                      return CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.blueGrey,
                        child: Center(
                          child: Text(
                            "$count",
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              )),
              Tab(
                  icon: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Ongoing"),
                  const SizedBox(
                    width: 4.0,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("orders")
                        .where("status", isEqualTo: "Ongoing")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      final count = snapshot.data!.docs.length;
                      if (count == 0) return Container();

                      return CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Colors.blueGrey,
                        child: Center(
                          child: Text(
                            "$count",
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              )),
              const Tab(icon: Text("Done")),
            ],
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TabBarView(
                children: List.generate(
                  3,
                  (index) {
                    var status = "";
                    if (index == 0) status = "Pending";
                    if (index == 1) status = "Ongoing";
                    if (index == 2) status = "Done";

                    return StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("orders")
                          .where("status", isEqualTo: status)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) {
                          return Text("Error: ${snapshot.error}");
                        }
                        if (snapshot.data == null) return Container();
                        if (snapshot.data!.docs.isEmpty) {
                          return const Text("No Data");
                        }
                        final data = snapshot.data!;
                        return ListView.builder(
                          itemCount: data.docs.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            DateTime createdAt =
                                (item["created_at"] as Timestamp).toDate();
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          createdAt.year.toString(),
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        Text(
                                          createdAt.month
                                              .toString()
                                              .padLeft(2, "0"),
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          DateFormat("MMM").format(createdAt),
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "#${item["id"]}",
                                            style: const TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          Text(
                                            item["customer"]["customer_name"],
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            item["customer"]["email"],
                                            style: const TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Total",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                            ),
                                          ),
                                          Text(
                                            "${item["items"].length}",
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6.0,
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        late String newStatus;
                                        switch (item["status"]) {
                                          case "Pending":
                                            newStatus = "Ongoing";
                                            break;
                                          case "Ongoing":
                                            newStatus = "Done";
                                            break;
                                          default:
                                            return;
                                        }

                                        await FirebaseFirestore.instance
                                            .collection("orders")
                                            .doc(item["id"])
                                            .update({
                                          "status": newStatus,
                                        });
                                      },
                                      child: Text(
                                        "${item["status"]}",
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            if (kDebugMode)
              Positioned(
                left: 10,
                bottom: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ElevatedButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text(
                          "Delete All",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () async {
                          var snapshot = await FirebaseFirestore.instance
                              .collection("orders")
                              .get();
                          for (var i = 0; i < snapshot.docs.length; i++) {
                            await FirebaseFirestore.instance
                                .collection("orders")
                                .doc(snapshot.docs[i].id)
                                .delete();
                          }
                        },
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.refresh),
                        label: const Text("Dummy"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () async {
                          for (var i = 0; i < 6; i++) {
                            var randomStatus =
                                i % 2 == 0 ? "Pending" : "Ongoing";

                            await FirebaseFirestore.instance
                                .collection("orders")
                                .add({
                              "created_at": Timestamp.fromDate(
                                DateTime.now().add(
                                  Duration(
                                    days: Random().nextInt(40),
                                  ),
                                ),
                              ),
                              "customer": {
                                "uid": FirebaseAuth.instance.currentUser!.uid,
                                "customer_name": FirebaseAuth
                                        .instance.currentUser!.displayName ??
                                    "Anonymous",
                                "email":
                                    FirebaseAuth.instance.currentUser!.email ??
                                        "-",
                                "photo": FirebaseAuth
                                        .instance.currentUser!.photoURL ??
                                    "https://i.ibb.co/S32HNjD/no-image.jpg",
                              },
                              "items": [
                                {
                                  "product_name": "Elegant Soft Chips",
                                  "price": 25.0,
                                  "qty": 2.0,
                                },
                                {
                                  "product_name": "Oriental Metal Hat",
                                  "price": 30.0,
                                  "qty": 1.0,
                                },
                                {
                                  "product_name": "Generic Bronze Chips",
                                  "price": 100.0,
                                  "qty": 2.0,
                                }
                              ],
                              "total": 280.0,
                              "status": randomStatus,
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  State<TabListView> createState() => TabListController();
}
