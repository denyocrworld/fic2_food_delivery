import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../controller/hris_employee_dashboard_controller.dart';

class HrisEmployeeDashboardView extends StatefulWidget {
  const HrisEmployeeDashboardView({Key? key}) : super(key: key);

  Widget build(context, HrisEmployeeDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HrisEmployeeDashboard"),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Orders",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "4,200",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+36%",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: const Icon(
                              Icons.list,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Customers",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "1,240",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "+25%",
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                            child: const Icon(
                              Icons.people,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              StreamBuilder<DocumentSnapshot<Object?>>(
                stream: FirebaseFirestore.instance
                    .collection("attendances")
                    .doc(controller.docId)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();

                  Map<String, dynamic>? item;
                  if (snapshot.data?.data() != null) {
                    item = (snapshot.data?.data() as Map<String, dynamic>);
                    item["id"] = snapshot.data!.id;
                  }

                  var checkinDate = item?["checkin_date"]?.toDate();
                  var checkoutDate = item?["checkout_date"]?.toDate();

                  var checkinTime =
                      "${checkinDate?.hour}:${checkinDate?.minute}:${checkinDate?.second}";
                  var checkoutTime =
                      "${checkoutDate?.hour}:${checkoutDate?.minute}:${checkoutDate?.second}";

                  var isCheckIn = checkinDate != null;
                  var isCheckOut = checkoutDate != null;

                  return Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: ElevatedButton.icon(
                            icon: Icon(
                              Icons.lock_clock,
                              color:
                                  isCheckIn ? Colors.white : Colors.grey[600],
                            ),
                            label: Text(
                              isCheckIn ? checkinTime : "Check in",
                              style: TextStyle(
                                color:
                                    isCheckIn ? Colors.white : Colors.grey[600],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isCheckIn
                                  ? Colors.blueGrey
                                  : Colors.blueGrey[200],
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () => controller.checkIn(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: ElevatedButton.icon(
                            icon: Icon(
                              Icons.lock_clock,
                              color:
                                  isCheckOut ? Colors.white : Colors.grey[600],
                            ),
                            label: Text(
                              isCheckOut ? checkoutTime : "Check out",
                              style: TextStyle(
                                color: isCheckOut
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isCheckOut
                                  ? Colors.blueGrey
                                  : Colors.blueGrey[200],
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () => controller.checkOut(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: () => controller.resetCheckInStatus(),
                        icon: const Icon(
                          Icons.refresh,
                          size: 24.0,
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 260.0,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1517328894681-0f5dfabd463c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
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
                  children: [
                    Positioned(
                      left: 10.0,
                      top: 10.0,
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[200]?.withOpacity(0.7),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
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
  State<HrisEmployeeDashboardView> createState() =>
      HrisEmployeeDashboardController();
}
