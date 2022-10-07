import 'package:fhe_template/core.dart';
import 'package:fhe_template/shared/util/format/format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              StreamBuilder<QuerySnapshot>(
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
                                        Text("${startAt.dMMMy}"),
                                        const SizedBox(
                                          height: 4.0,
                                        ),
                                        Text("${endAt.dMMMy}"),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "${double.parse(item["prize_pool"]).idr}",
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
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection("event_participants")
                                        .where("event_id",
                                            isEqualTo: item["event_id"])
                                        .orderBy("created_at")
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (snapshot.hasError) {
                                        return const Text("Error");
                                      }
                                      if (snapshot.data == null) {
                                        return Container();
                                      }
                                      if (snapshot.data!.docs.isEmpty) {
                                        return const Text("No Data");
                                      }
                                      final data = snapshot.data!;

                                      return Column(
                                        children: [
                                          Text(
                                            "Participants: ${snapshot.data!.docs.length}",
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 12.0,
                                          ),
                                          ListView.builder(
                                            itemCount:
                                                snapshot.data!.docs.length,
                                            shrinkWrap: true,
                                            physics: const ScrollPhysics(),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              Map item = (snapshot
                                                      .data!.docs[index]
                                                      .data()
                                                  as Map<String, dynamic>);
                                              item["id"] =
                                                  snapshot.data!.docs[index].id;

                                              var email = item["user"]["email"];

                                              var arr = email.split("@");
                                              var maskedEmail = email[0] +
                                                  email[1] +
                                                  email[2] +
                                                  "***" +
                                                  "@" +
                                                  arr[1];

                                              if (!isAdmin) {
                                                email = maskedEmail;
                                              }
                                              return Container(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "${item["user"]["name"]}",
                                                        style: const TextStyle(
                                                          fontSize: 8.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await Clipboard
                                                              .setData(
                                                                  ClipboardData(
                                                            text: email,
                                                          ));
                                                        },
                                                        child: Text(
                                                          "$email",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 8.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      );
                                    },
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
