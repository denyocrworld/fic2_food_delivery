/*
list_order_with_tab
item_order
*/
import 'package:fhe_template/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardTemplateView extends StatefulWidget {
  const CardTemplateView({Key? key}) : super(key: key);

  Widget build(context, CardTemplateController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("CardTemplate"),
          actions: const [],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Text("Pending")),
              Tab(icon: Text("Ongoing")),
              Tab(icon: Text("Done")),
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
                        if (snapshot.hasError) return const Text("Error");
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
                                    Text(
                                      "${item["status"]}",
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
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
                child: Row(
                  children: [
                    const Text(
                      "DevTools",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bug_report,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("CardTemplate"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Text(
                            "2022",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            "02",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "DEC",
                            style: TextStyle(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Order #10001",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "johndoe@gmail.com",
                              style: TextStyle(
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
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                            Text(
                              "120",
                              style: TextStyle(
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
                      const Text(
                        "Processing",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
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
    );
  }

  @override
  State<CardTemplateView> createState() => CardTemplateController();
}
