import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../../service/dummy_service/dummy_service.dart';

class Elv1View extends StatefulWidget {
  const Elv1View({Key? key}) : super(key: key);

  Widget build(context, Elv1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text("Shoes"),
            Text(
              "13.4K Items",
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
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
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: DummyService.products.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = DummyService.products[index];
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
                        Radius.circular(12.0),
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
                              Icons.favorite,
                              size: 14.0,
                              color: Colors.red,
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  item["product_name"],
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  item["category"],
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elv1View> createState() => Elv1Controller();
}
