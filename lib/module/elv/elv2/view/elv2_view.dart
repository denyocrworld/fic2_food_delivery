import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../../service/dummy_service/dummy_service.dart';
import '../controller/elv2_controller.dart';

class Elv2View extends StatefulWidget {
  const Elv2View({Key? key}) : super(key: key);

  Widget build(context, Elv2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Jackets"),
            Text(
              "81 items",
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 42,
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
                    height: 42,
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: DummyService.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = DummyService.products[index];
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.more_horiz,
                              size: 14.0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            color: Colors.black.withOpacity(0.6),
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Text(
                                  item["product_name"],
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  item["category"],
                                  style: const TextStyle(
                                    fontSize: 8.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$${item["price"]}",
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
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
                                        color: Colors.red,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
  State<Elv2View> createState() => Elv2Controller();
}
