import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

extension DateFormatExtension on DateTime {
  format() {
    var value = this;
    return DateFormat("d MMM y").format(value);
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        // constraints: const BoxConstraints(
        //   maxWidth: 760.0,
        // ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //body
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                globalMessage,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.orange[400],
                ),
              ),
            ),
            SizedBox(
              height: 140.0,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      color: Colors.blue[400],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.green[800],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                12.0,
                              ),
                            ),
                          ),
                          child: const Text(
                            "PROMO",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                              ),
                            ),
                            child: const Text(
                              "Avocado and Eeg Toast",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11.0,
                                color: Colors.white,
                              ),
                            ),
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
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: const NetworkImage(
                    "https://i.ibb.co/QrTHd59/woman.jpg",
                  ),
                ),
                title: const Text("Jessica Doe"),
                subtitle: const Text("Programmer"),
              ),
            ),
            Builder(builder: (context) {
              var categories = ["Food", "Groceries", "Drink"];
              return Card(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      "https://i.ibb.co/QrTHd59/woman.jpg",
                    ),
                  ),
                  title: const Text("Jessica Doe"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Programmer"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(categories.length, (index) {
                          var item = categories[index];
                          return Container(
                            margin: const EdgeInsets.only(
                              right: 4.0,
                            ),
                            child: Text(item),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              );
            }),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Events",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            const Divider(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("events").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;

                  return Wrap(
                    runSpacing: 20.0,
                    spacing: 20.0,
                    children: List.generate(
                      data.docs.length,
                      (index) {
                        Map<String, dynamic> item =
                            (data.docs[index].data() as Map<String, dynamic>);
                        item["id"] = data.docs[index].id;

                        DateTime startAt =
                            item["start_at"]?.toDate() ?? DateTime.now();
                        DateTime endAt =
                            item["end_at"]?.toDate() ?? DateTime.now();

                        var eventUid = item["id"];
                        var userUid = me.uid;

                        return SizedBox(
                          width: 300,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                      backgroundImage: NetworkImage(
                                        item["photo"] ??
                                            "https://i.ibb.co/S32HNjD/no-image.jpg",
                                      ),
                                    ),
                                    title: Text(
                                      "${item["title"]}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${item["description"]}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text("${startAt.format()}"),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text("${endAt.format()}"),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "Rp${item["prize_pool"]}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 12.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Container(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton.icon(
                                            icon:
                                                const Icon(Icons.thunderstorm),
                                            label: const Text(
                                              "Support",
                                              style: TextStyle(
                                                fontSize: 10.0,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.blueGrey,
                                            ),
                                            onPressed: () async {
                                              controller.openPaymentUrl(
                                                  item["id"], 1000);
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6.0,
                                        ),
                                        StreamBuilder<DocumentSnapshot>(
                                          stream: FirebaseFirestore.instance
                                              .collection("event_participants")
                                              .doc(eventUid + "_" + userUid)
                                              .snapshots(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasError) {
                                              return const Text("Error");
                                            }

                                            var joined =
                                                snapshot.data?.exists ?? false;
                                            return Expanded(
                                              child: ElevatedButton.icon(
                                                icon: const Icon(Icons.login),
                                                label: Text(
                                                  joined ? "Leave" : "Join",
                                                  style: const TextStyle(
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: joined
                                                      ? Colors.red[300]
                                                      : null,
                                                ),
                                                onPressed: () => controller
                                                    .doJoin(item, joined),
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                  return ListView.builder(
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo"] ??
                                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                            ),
                          ),
                          title: Text("${item["title"]}"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${item["description"]}"),
                              Text("${item["start_at"]}"),
                              Text("${item["end_at"]}"),
                            ],
                          ),
                          trailing: ElevatedButton.icon(
                            icon: const Icon(Icons.add),
                            label: const Text("Join"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {},
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
  State<DashboardView> createState() => DashboardController();
}
