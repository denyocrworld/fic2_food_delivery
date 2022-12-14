import 'package:flutter/material.dart';
import 'package:example/core.dart';

class TkposPosView extends StatefulWidget {
  const TkposPosView({Key? key}) : super(key: key);

  Widget build(context, TkposPosController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TkposPos"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            //Alt+Shift+V
            Expanded(
              child: ListView.builder(
                itemCount: controller.productList.length,
                itemBuilder: (context, index) {
                  var item = controller.productList[index];
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
                      subtitle: Text("${item["price"]}"),
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
                                    if (item["qty"] == 0) return;
                                    item["qty"]--;
                                    controller.setState(() {});
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
                            CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                              radius: 12.0,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {
                                    item["qty"]++;
                                    controller.setState(() {});
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
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: QDropdownField(
                          label: "Payment",
                          hint: "Payment method",
                          validator: Validator.required,
                          items: const [
                            {
                              "label": "Cash",
                              "value": 1,
                            },
                            {
                              "label": "Credit Card",
                              "value": 2,
                            },
                            {
                              "label": "OVO",
                              "value": 3,
                            }
                          ],
                          onChanged: (value, label) {},
                        ),
                      ),
                      const Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 16.0,
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
                  const Divider(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 48,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.check),
                      label: const Text("Checkout"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TkposPosView> createState() => TkposPosController();
}
