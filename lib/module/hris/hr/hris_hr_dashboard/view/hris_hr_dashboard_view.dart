import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class HrisHrDashboardView extends StatefulWidget {
  const HrisHrDashboardView({Key? key}) : super(key: key);

  Widget build(context, HrisHrDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrisHrDashboard"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.doLogout(),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("attendances")
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
                      var checkInDate = DateFormat("d MMM y kk:mm:ss")
                          .format((item["checkin_date"] as Timestamp).toDate());
                      var checkOutDate = DateFormat("d MMM y kk:mm:ss").format(
                          (item["checkout_date"] as Timestamp).toDate());
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["employee"]["photo"],
                            ),
                          ),
                          title: Text(item["employee"]["employee_name"]),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(checkInDate),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(checkOutDate),
                              const Text("Checkin:"),
                              ExLocationPicker(
                                id: "location",
                                label: "Location",
                                enableEdit: false,
                                latitude: item["checkin_position"]["latitude"],
                                longitude: item["checkin_position"]
                                    ["longitude"],
                              ),
                              const Text("Checkout:"),
                              ExLocationPicker(
                                id: "location",
                                label: "Location",
                                enableEdit: false,
                                latitude: item["checkout_position"]["latitude"],
                                longitude: item["checkout_position"]
                                    ["longitude"],
                              ),
                            ],
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
  State<HrisHrDashboardView> createState() => HrisHrDashboardController();
}
