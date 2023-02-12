import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../../service/dummy_service/dummy_service.dart';
import '../controller/elv3_controller.dart';

class Elv3View extends StatefulWidget {
  const Elv3View({Key? key}) : super(key: key);

  Widget build(context, Elv3Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv3"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Polo Shirts",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            const Text(
              "617 items",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("Sort by"),
                          ),
                          Icon(
                            Icons.sort,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: SizedBox(
                    height: 38,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey[900],
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text("Filter"),
                          ),
                          Icon(
                            Icons.tune,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: DummyService.products.length,
                itemBuilder: (context, index) {
                  var item = DummyService.products[index];

                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 36.0,
                          backgroundImage: NetworkImage(
                            item["photo"],
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  fontSize: 8.0,
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            size: 24.0,
                          ),
                        )
                      ],
                    ),
                  );
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["product_name"],
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            item["category"],
                            style: const TextStyle(
                              fontSize: 8.0,
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$${item["price"]}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                "\$${item["price"]}",
                                style: const TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 24.0,
                        ),
                      ),
                    ),
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
  State<Elv3View> createState() => Elv3Controller();
}
