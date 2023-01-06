import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class TkposProductListView extends StatefulWidget {
  const TkposProductListView({Key? key}) : super(key: key);

  Widget build(context, TkposProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.blueGrey,
              child: Text(
                "${controller.productList.length}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const TkposProductFormView());
          await controller.getProductList();
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //Alt+Shift+V
              ListView.builder(
                itemCount: controller.productList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.productList[index];
                  //Alt+Shift+D
                  return InkWell(
                    onTap: () async {
                      await Get.to(TkposProductFormView(
                        item: item,
                      ));
                      await controller.getProductList();
                    },
                    child: Dismissible(
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
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(
                              item["photo"],
                            ),
                          ),
                          title: Text("${item["product_name"]}"),
                          subtitle: Text("${item["price"]}"),
                        ),
                      ),
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
  State<TkposProductListView> createState() => TkposProductListController();
}
