import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

import '../../../../service/dummy_service/dummy_service.dart';

class Elv4View extends StatefulWidget {
  const Elv4View({Key? key}) : super(key: key);

  Widget build(context, Elv4Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Elv4"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shirts",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: DummyService.products.length,
                itemBuilder: (context, index) {
                  var item = DummyService.products[index];
                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 96.0,
                          height: 96.0,
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
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                item["category"],
                                style: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "${item["price"]}",
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      4.0,
                                    ),
                                  ),
                                ),
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: const [
                                    Icon(
                                      MdiIcons.plusBox,
                                      size: 20.0,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      "0",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Icon(
                                      MdiIcons.minusBox,
                                      size: 20.0,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  )
                      .animate(
                        delay: (index * 200).ms,
                      )
                      .fade()
                      .shake();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<Elv4View> createState() => Elv4Controller();
}
