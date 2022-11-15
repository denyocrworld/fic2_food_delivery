import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosAnotherExampleView extends StatefulWidget {
  const PosAnotherExampleView({Key? key}) : super(key: key);

  Widget build(context, PosAnotherExampleController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosAnotherExample"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
            //alt+shift+v
            Expanded(
              child: ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  item["qty"] = item["qty"] ?? 0;

                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["photo"],
                        ),
                      ),
                      title: Text("${item["product_name"]}"),
                      subtitle: Text("15 ${item["price"]}"),
                      trailing: SizedBox(
                        width: 120.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    item["qty"]--;
                                    controller.update();
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${item["qty"]}",
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            /*
                            TODO:
                            TIPS SUPAYA BISA CEPET NGODING    
                            ! KURANGI MEMBACA
                            ! PERBANYAK LATIHAN
                            ! PORSI-NYA: 20 Membaca : 80% Latihan Ngoding
                            */
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    item["qty"]++;
                                    controller.update();
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 9.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
  State<PosAnotherExampleView> createState() => PosAnotherExampleController();
}
