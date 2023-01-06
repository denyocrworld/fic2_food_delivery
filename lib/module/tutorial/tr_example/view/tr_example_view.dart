import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

class TrExampleView extends StatefulWidget {
  const TrExampleView({Key? key}) : super(key: key);
  Widget build(context, TrExampleController controller) {
    controller.view = this;

    String? productName;
    String? photo;
    String userPhoto = "https://i.ibb.co/PGv8ZzG/me.jpg";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboards"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(productName ?? "-"),
            Image.network(
              photo ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
              width: 64.0,
              height: 64.0,
              fit: BoxFit.fill,
            ),
            Text(
              "${controller.counter.value}",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${controller.counterx.value}",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                controller.updateCounter();
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              controller.name.value,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Update name"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () => controller.updateName(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TrExampleView> createState() => TrExampleController();
}
