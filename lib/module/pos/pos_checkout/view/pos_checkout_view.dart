import 'package:example/core.dart';
import 'package:flutter/material.dart';

class PosCheckoutView extends StatefulWidget {
  const PosCheckoutView({Key? key}) : super(key: key);

  Widget build(context, PosCheckoutController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PosCheckout"),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: PosController.instance.products.length,
                    itemBuilder: (context, index) {
                      var item = PosController.instance.products[index];
                      if (item["qty"] == 0) return Container();

                      var total = double.parse(item["qty"].toString()) *
                          double.parse(item["price"].toString());
                      return ListTile(
                        contentPadding: const EdgeInsets.all(2.0),
                        title: Text("${item["product_name"]}"),
                        subtitle: Text("${item["qty"]} x ${item["price"]}"),
                        trailing: Text("$total"),
                      );
                    },
                  ),
                ),
                const ExRadio(
                  id: "payment_method",
                  label: "Payment method",
                  items: [
                    {
                      "label": "Cash",
                      "value": "Cash",
                    },
                    {
                      "label": "Credit Card",
                      "value": "Credit Card",
                    },
                    {
                      "label": "OVO",
                      "value": "OVO",
                    },
                    {
                      "label": "Dana",
                      "value": "Dana",
                    },
                    {
                      "label": "Gopay",
                      "value": "Gopay",
                    }
                  ],
                  value: "Cash",
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(2.0),
                  title: const Text("Table Number"),
                  trailing: Text(
                    "${PosTableController.instance.selectedTable}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  contentPadding: const EdgeInsets.all(2.0),
                  title: const Text("Total"),
                  trailing: Text(
                    "${PosController.instance.total}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.check),
                    label: const Text("Checkout"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () => controller.doCheckout(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PosCheckoutView> createState() => PosCheckoutController();
}
