import 'package:fhe_template/core.dart';
import 'package:fhe_template/hyperwind.dart';
import 'package:flutter/material.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  Widget build(context, DebugController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                wxl,
                Expanded(
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            hl,
            hl,
            hl,
            hl,
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.purple[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
            const ImageIcon(
              NetworkImage(
                "https://i.ibb.co/rsz6JWq/751463.png",
              ),
              size: 24.0,
            ).p12(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ).expanded(),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                ).expanded(),
              ],
            ),
            SizedBox(
              height: 50.0,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ).md(),
            ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
            ).xl(),
            Image.network(
              "https://i.ibb.co/S32HNjD/no-image.jpg",
              fit: BoxFit.fill,
            ).xs(),
            Container(
              height: 500.0,
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ).scroll(),
    );
  }

  @override
  State<DebugView> createState() => DebugController();
}
