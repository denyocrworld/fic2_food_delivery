import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../../../../service/dummy_service/dummy_service.dart';

class Elv5View extends StatefulWidget {
  const Elv5View({Key? key}) : super(key: key);

  Widget build(context, Elv5Controller controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            height: 160.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  color: Colors.black.withOpacity(0.4),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Clothing",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "73.3k items",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: ScrollController(),
            child: Row(
              children: List.generate(
                DummyService.categories.length,
                (index) {
                  var item = DummyService.categories[index];
                  var selected = index == 0;
                  return Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          "${item["category_name"]}",
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        if (selected)
                          Container(
                            width: 30.0,
                            height: 1.0,
                            color: Colors.black,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: DummyService.products.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = DummyService.products[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["photo"],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        item["product_name"],
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        item["category"],
                        style: const TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$${item["price"]}",
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            "\$${item["price"]}",
                            style: const TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: const [
                          Icon(
                            MdiIcons.plusBox,
                            size: 24.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            MdiIcons.minusBox,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ],
                  )
                      .animate(
                        delay: (index * 100).ms,
                      )
                      .fade()
                      .shake();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<Elv5View> createState() => Elv5Controller();
}
