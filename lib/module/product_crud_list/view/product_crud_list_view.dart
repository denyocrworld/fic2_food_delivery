import 'package:example/core.dart';
import 'package:flutter/material.dart';

class ProductCrudListView extends StatefulWidget {
  const ProductCrudListView({Key? key}) : super(key: key);

  Widget build(context, ProductCrudListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductCrudList"),
        actions: [
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
                      builder: (context) => const ProductCrudFormView()),
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

            StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("products").snapshots(),
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

                    return InkWell(
                      onTap: () {},
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
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
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
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Roti bakar Cimanggis",
                                        style: TextStyle(
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
                                      const Text(
                                        "Bakery & Cake . Breakfast . Snack",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "€24",
                                        style: TextStyle(
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
          ],
        ),
      ),
    );
  }

  @override
  State<ProductCrudListView> createState() => ProductCrudListController();
}
