import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosView extends StatefulWidget {
  const PosView({Key? key}) : super(key: key);

  Widget build(context, PosController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pos"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.table_bar),
              label: Text("${PosTableController.instance.selectedTable}"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "${controller.total}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: SizedBox(
                height: 90,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.check),
                  label: const Text("Checkout"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PosCheckoutView()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //body
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
                      onFieldSubmitted: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> item = controller.products[index];
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                "${item["category"]}",
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
                        const SizedBox(
                          width: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (item["qty"] == 0) return;
                                item["qty"]--;
                                controller.update();
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 16.0,
                              ),
                            ),
                            Text(
                              "${item["qty"]}",
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                item["qty"]++;
                                controller.update();
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }

  @override
  State<PosView> createState() => PosController();
}
