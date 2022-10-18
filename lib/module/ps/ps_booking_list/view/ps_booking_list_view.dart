import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class PsBookingListView extends StatefulWidget {
  const PsBookingListView({Key? key}) : super(key: key);

  Widget build(context, PsBookingListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking List"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ExRadio(
              id: "gender",
              items: const [
                {
                  "label": "Ongoing",
                  "value": "Ongoing",
                },
                {
                  "label": "Done",
                  "value": "Done",
                }
              ],
              value: "Ongoing",
              onChanged: (value) {
                controller.status = value;
                controller.update();
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("booking_list")
                    .where("status", isEqualTo: controller.status)
                    .where(
                      "customer.uid",
                      isEqualTo: FirebaseAuth.instance.currentUser!.uid,
                    )
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

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                margin: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      item["photo"] ??
                                          "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                                        "Book now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 6.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${item["user"]["name"]}",
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  const Text(
                                                    "8.1 km",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 4.0,
                                                  ),
                                                  const Icon(
                                                    Icons.circle,
                                                    size: 4.0,
                                                  ),
                                                  const SizedBox(
                                                    width: 4.0,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.orange[400],
                                                    size: 16.0,
                                                  ),
                                                  const Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              Text(
                                                "${item["description"]}",
                                                style: const TextStyle(
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              Text(
                                                "${item["status"]}",
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 6.0,
                                              ),
                                              Text(
                                                "\$${item["price"]}",
                                                style: const TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100.0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: ElevatedButton.icon(
                                                  icon: const Icon(
                                                    Icons.location_pin,
                                                    size: 16.0,
                                                  ),
                                                  label: const Text(
                                                    "Location",
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                    ),
                                                  ),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.blueGrey,
                                                  ),
                                                  onPressed: () async {
                                                    UrlLauncher.openMap(
                                                      item["latitude"],
                                                      item["longitude"],
                                                    );
                                                  },
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4.0,
                                              ),
                                              if (item["status"] == "Ongoing")
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: ElevatedButton.icon(
                                                    icon: const Icon(
                                                      MdiIcons.book,
                                                      size: 16.0,
                                                    ),
                                                    label: const Text(
                                                      "Mark as completed",
                                                      style: TextStyle(
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          Colors.blueGrey,
                                                    ),
                                                    onPressed: () async {
                                                      bool confirm = false;
                                                      await showDialog<void>(
                                                        context: context,
                                                        barrierDismissible:
                                                            true,
                                                        builder: (BuildContext
                                                            context) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Confirm'),
                                                            content:
                                                                SingleChildScrollView(
                                                              child: ListBody(
                                                                children: const <
                                                                    Widget>[
                                                                  Text(
                                                                      'Are you sure you want to mark this item as completed?'),
                                                                ],
                                                              ),
                                                            ),
                                                            actions: <Widget>[
                                                              ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  backgroundColor:
                                                                      Colors.grey[
                                                                          600],
                                                                ),
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const Text(
                                                                        "No"),
                                                              ),
                                                              ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .blueGrey,
                                                                ),
                                                                onPressed: () {
                                                                  confirm =
                                                                      true;
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    const Text(
                                                                        "Yes"),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );

                                                      if (confirm) {
                                                        controller
                                                            .doMarkAsCompleted(
                                                                item);
                                                      }
                                                    },
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
  State<PsBookingListView> createState() => PsBookingListController();
}
