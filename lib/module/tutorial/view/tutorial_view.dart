import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

/*
Junior Programmer
Jakarta
8 - 15

Daerah
4 - 8

Singapur
15 - 35++

US/UK
25 - 45++

Front End
- Bikin UI
- Consume API

Optional
- Bisa Testing
- Bisa deploy
- Paham architecture

Punya Portofolio
Q: Bang, gw belum pernah ngerjain project apapun
A: 
1. Coba bikin 5 UI Aplikasi Populer
Seperti Tokopedia, Tiktok, Shopee,
(Per aplikasi, 3-5 halaman aja )

2, Clone 5 UI dari Dribble, cari yang terbaik

3. Bikin 1 Aplikasi yang terhubung dengan API
(Movie API, Weather API, Forex API, Crypto API, dsb)

- 11 Portofolio


Portofolio

Skill
- Login n get Token
- CRUD
- Proteksi Endpoint
- Bikin Dokumentasi di Postman/Insomia/ThunderClient/Web

Product
- Ecommerce APi
- Movie Api
- Chat API (Biasanya pake Websocket)

*/

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  Widget build(context, TutorialController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
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
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
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
                        controller.setState(() {});
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.gridMode = !controller.gridMode;
                      controller.setState(() {});
                    },
                    icon: Icon(
                      // Icons.grid_3x3,
                      controller.gridMode ? Icons.grid_3x3 : Icons.list,
                      size: 24.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            if (controller.gridMode)
              Expanded(
                child: Builder(builder: (context) {
                  List items = controller.products;

                  if (controller.search.isNotEmpty) {
                    var search = controller.search.toLowerCase();
                    items = items
                        .where((i) => i["product_name"]
                            .toString()
                            .toLowerCase()
                            .contains(search))
                        .toList();
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: items.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = items[index];
                      return Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              item["photo"],
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(6.0),
                                color: Colors.black.withOpacity(0.6),
                                child: Center(
                                  child: Text(
                                    item["product_name"],
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 10,
                              top: 10,
                              child: CircleAvatar(
                                radius: 12.0,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
            if (!controller.gridMode)
              Expanded(
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    item["qty"] ??= 0;

                    if (controller.search.isNotEmpty) {
                      var search = controller.search.toLowerCase();
                      var productName =
                          item["product_name"].toString().toLowerCase();

                      if (!productName.contains(search)) {
                        return Container();
                      }
                    }

                    return AnimatedScale(
                      duration: const Duration(milliseconds: 900),
                      scale: item["qty"] > 0 ? 1.0 : 0.9,
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo"],
                            ),
                          ),
                          title: Text(item["product_name"]),
                          subtitle: Text("${item["price"]}"),
                          trailing: SizedBox(
                            width: 60,
                            child: Row(
                              children: [
                                Text(
                                  "${item["qty"]}",
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: IconButton(
                                          onPressed: () {
                                            item["qty"]++;
                                            controller.setState(() {});
                                          },
                                          icon: const Icon(
                                            Icons.add,
                                            size: 12.0,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: IconButton(
                                          onPressed: () {
                                            if (item["qty"] == 0) return;
                                            item["qty"]--;
                                            controller.setState(() {});
                                          },
                                          icon: const Icon(
                                            Icons.remove,
                                            size: 12.0,
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
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          children: [
            Column(
              children: [
                QDropdownField(
                  label: "Payment method",
                  validator: Validator.required,
                  items: const [
                    {
                      "label": "Cash",
                      "value": 1,
                    },
                    {
                      "label": "OVO",
                      "value": 2,
                    },
                    {
                      "label": "DANA",
                      "value": 3,
                    },
                    {
                      "label": "Gopay",
                      "value": 4,
                    },
                    {
                      "label": "Credit Card",
                      "value": 5,
                    }
                  ],
                  onChanged: (value, label) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "${controller.total}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 46.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {},
                    child: const Text("Checkout"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TutorialView> createState() => TutorialController();
}
