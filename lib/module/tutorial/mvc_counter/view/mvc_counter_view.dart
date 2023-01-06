import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/mvc_counter_controller.dart';

class MvcCounterView extends StatefulWidget {
  const MvcCounterView({Key? key}) : super(key: key);

  Widget build(context, MvcCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MvcCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateCounter(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                      controller.product.photo!,
                    ),
                  ),
                  title: Text(controller.product.productName!),
                  subtitle: Text(controller.product.price.toString()),
                ),
              ),
              const Divider(),
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
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
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MvcCounterView> createState() => MvcCounterController();
}
