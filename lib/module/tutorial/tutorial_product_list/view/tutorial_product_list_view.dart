import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';

class TutorialProductListView extends StatefulWidget {
  const TutorialProductListView({Key? key}) : super(key: key);

  Widget build(context, TutorialProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TutorialProductList"),
        actions: [
          IconButton(
            onPressed: () => controller.updateGridMode(),
            icon: Icon(
              controller.gridMode ? Icons.grid_3x3 : Icons.list,
              size: 24.0,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const TutorialProductFormView());
          await controller.getProducts();
        },
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            if (controller.gridMode)
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: controller.products.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.products[index];
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item["photo"] ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            right: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Text(
                                "\$${item["price"] ?? 0}",
                                style: const TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.all(12.0),
                              color: Colors.black.withOpacity(0.4),
                              child: Text(
                                item["product_name"] ?? "-",
                                style: const TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ).animate().fade().shake().move();
                  },
                ),
              ),
            if (!controller.gridMode)
              Expanded(
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (detail) {},
                      confirmDismiss: (direction) async {
                        bool confirm = false;
                        await showDialog<void>(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Confirm'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Are you sure you want to delete this item?'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("No"),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  onPressed: () {
                                    confirm = true;
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Yes"),
                                ),
                              ],
                            );
                          },
                        );
                        if (confirm) {
                          controller.deleteProduct(item);
                          return Future.value(true);
                        }
                        return Future.value(false);
                      },
                      child: Card(
                        child: ListTile(
                          onTap: () async {
                            await Get.to(TutorialProductFormView(
                              item: item,
                            ));
                            await controller.getProducts();
                          },
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo"] ??
                                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                            ),
                          ),
                          title: Text("${item["product_name"]}"),
                          subtitle: Text("${item["price"]}"),
                          trailing: Text("#${item["id"]}"),
                        ),
                      )
                          .animate(delay: (index * 200).ms)
                          .fade()
                          .shake()
                          .slideX(),
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
  State<TutorialProductListView> createState() =>
      TutorialProductListController();
}
