import 'package:example/core.dart';
import 'package:example/shared/util/common/common.dart';
import 'package:flutter/material.dart';

class PosOrderListView extends StatefulWidget {
  const PosOrderListView({Key? key}) : super(key: key);

  Widget build(context, PosOrderListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosOrderList"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("pos_orders")
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
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;

/*
                  "created_at": Timestamp.now(),
                  "table_number": PosTableController.instance.selectedTable,
                  "payment_method": paymentMethod,
                  "items": PosController.instance.products.length,
                  "total": PosController.instance.total,
                  "seller": {
                    "uid": FirebaseAuth.instance.currentUser!.uid,
                    "name": FirebaseAuth.instance.currentUser!.displayName ?? "-",
                    "email": FirebaseAuth.instance.currentUser!.email ?? "-",
                  },
                  */

                      var createdAt =
                          (item["created_at"] as Timestamp).toDate().dMMMykkss;
                      var total = item["total"];

                      return Card(
                        child: ListTile(
                          title: Text("${item["id"]}"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("$total"),
                              Text("${item["payment_method"]}"),
                            ],
                          ),
                          trailing: Text(
                            "$createdAt",
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<PosOrderListView> createState() => PosOrderListController();
}
