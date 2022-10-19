import 'package:example/core.dart';

import 'package:flutter/material.dart';

class EventListView extends StatefulWidget {
  const EventListView({Key? key}) : super(key: key);

  Widget build(context, EventListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EventList"),
        actions: [
          if (isAdmin)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.developer_board),
                label: const Text("Fix"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () async {
                  var snapshot = await FirebaseFirestore.instance
                      .collection("event_participants")
                      .get();
                  for (var doc in snapshot.docs) {
                    Map<String, dynamic> obj = doc.data();

                    var userSnapshot = await FirebaseFirestore.instance
                        .collection("users")
                        .doc(obj["user_id"])
                        .get();

                    Map<String, dynamic> user =
                        (userSnapshot.data() as Map<String, dynamic>);

                    obj["user"] = {
                      "id": obj["user_id"],
                      "name": user["name"],
                      "email": user["email"],
                    };

                    FirebaseFirestore.instance
                        .collection("event_participants")
                        .doc(doc.id)
                        .update({
                      "user": {
                        "id": obj["user_id"],
                        "name": user["name"],
                        "email": user["email"],
                      },
                    });
                  }
                },
              ),
            ),
          if (isAdmin)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EventFormView(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            if (isAdmin)
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("events")
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
                        return Dismissible(
                          key: UniqueKey(),
                          onDismissed: (detail) {},
                          confirmDismiss: (direction) async {
                            bool confirm = false;
                            await showDialog<void>(
                              context: context,
                              barrierDismissible: true,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Confirm'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: const <Widget>[
                                        Text(
                                            'Are you sure you want to delete this item?'),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[600],
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("No"),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                      ),
                                      onPressed: () {
                                        confirm = true;
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Yes"),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (confirm) {
                              await FirebaseFirestore.instance
                                  .collection("events")
                                  .doc(item["id"])
                                  .delete();
                              return Future.value(true);
                            }
                            return Future.value(false);
                          },
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage: NetworkImage(
                                  item["photo"] ??
                                      "https://i.ibb.co/S32HNjD/no-image.jpg",
                                ),
                              ),
                              title: Text("${item["title"]}"),
                              subtitle: Text("${item["description"]}"),
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
  State<EventListView> createState() => EventListController();
}
