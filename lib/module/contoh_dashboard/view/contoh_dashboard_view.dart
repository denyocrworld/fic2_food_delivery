import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class ContohDashboardView extends StatefulWidget {
  const ContohDashboardView({Key? key}) : super(key: key);

  Widget build(context, ContohDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ContohDashboard"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_bubble,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 24.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ContohProductFormView()),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
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
                        hintText: "What are you craving?",
                        hintStyle: TextStyle(
                          color: Colors.grey[500],
                        ),
                        hoverColor: Colors.transparent,
                      ),
                      onFieldSubmitted: (value) {
                        controller.search = value;
                        controller.update();
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("tiktok_products")
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

                      if (controller.search.isNotEmpty) {
                        var search = controller.search.toLowerCase();
                        var productName =
                            item["product_name"].toString().toLowerCase();

                        if (!productName.contains(search)) return Container();
                      }

                      //alt+shift+d
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContohProductFormView(
                                item: item,
                              ),
                            ),
                          );
                        },
                        child: Dismissible(
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
                                  .collection("tiktok_products")
                                  .doc(item["id"])
                                  .delete();
                              return Future.value(true);
                            }
                            return Future.value(false);
                          },
                          child: Card(
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
                                          item["photo"],
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
                                            borderRadius:
                                                const BorderRadius.all(
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
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["product_name"],
                                          style: const TextStyle(
                                            fontSize: 14.0,
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
                                          item["category"],
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          "€${item["price"]}",
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
  State<ContohDashboardView> createState() => ContohDashboardController();
}
