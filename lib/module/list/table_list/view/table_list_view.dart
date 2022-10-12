import 'dart:math';

import 'package:fhe_template/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TableListView extends StatefulWidget {
  const TableListView({Key? key}) : super(key: key);

  Widget build(context, TableListController controller) {
    controller.view = this;

    //#GROUP_TEMPLATE scaffold
    //#TEMPLATE scaffold_table_fire
    /*
    TODO: State management is required to enable this feature. 
    TODO: Create a page variable in your controller or State
    Example:
    int page = 1;
    String search = "";
    */
    var page = controller.page;
    var limit = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TableList"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Column(
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("orders")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      final data = snapshot.data!;
                      const cellPadding = 12.0;

                      var itemCount = snapshot.data!.docs.length;
                      var startIndex = (page * limit) - limit;
                      var endIndex = startIndex + limit;

                      if (endIndex >= (itemCount - 1)) {
                        endIndex = itemCount - 1;
                      }

                      var pageItems = [];
                      var searchItems = snapshot.data!.docs.where((i) {
                        var search = controller.search.toLowerCase();
                        var searchField = i["customer.customer_name"]
                            .toString()
                            .toLowerCase();
                        return searchField.toString().contains(search);
                      }).toList();

                      debugPrint("page : $page");
                      debugPrint("startIndex : $startIndex");
                      debugPrint("endIndex : $endIndex");

                      if (searchItems.isNotEmpty && startIndex >= 0) {
                        pageItems =
                            searchItems.getRange(startIndex, endIndex).toList();
                      }

                      var pageCount = (itemCount / limit).ceil();

                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: const Text(
                                      "Orders",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300.0,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6.0,
                                      horizontal: 12.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.search,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            initialValue: null,
                                            decoration:
                                                InputDecoration.collapsed(
                                              filled: true,
                                              fillColor: Colors.transparent,
                                              hintText: "Search",
                                              hintStyle: TextStyle(
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                            onFieldSubmitted: (value) {
                                              controller.search = value;
                                              controller.update();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Table(
                                border: TableBorder.all(
                                  color: Colors.blueGrey[300]!,
                                  width: 0.4,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                ),
                                columnWidths: const <int, TableColumnWidth>{
                                  0: IntrinsicColumnWidth(),
                                  1: FixedColumnWidth(120),
                                  2: FlexColumnWidth(),
                                  3: FixedColumnWidth(120),
                                  4: FixedColumnWidth(120),
                                  5: FixedColumnWidth(120),
                                },
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                                children: <TableRow>[
                                  const TableRow(
                                    children: <Widget>[
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Order ID"),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Created At"),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Customer Name"),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Status"),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Total"),
                                        ),
                                      ),
                                      TableCell(
                                        verticalAlignment:
                                            TableCellVerticalAlignment.top,
                                        child: Padding(
                                          padding: EdgeInsets.all(cellPadding),
                                          child: Text("Action"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ...List.generate(pageItems.length, (index) {
                                    Map<String, dynamic> item =
                                        (pageItems[index].data()
                                            as Map<String, dynamic>);
                                    item["id"] = pageItems[index].id;
                                    DateTime createdAt =
                                        (item["created_at"] as Timestamp)
                                            .toDate();
                                    String formattedCreatedAt =
                                        DateFormat("d MMM y").format(createdAt);
                                    return TableRow(
                                      decoration: const BoxDecoration(),
                                      children: <Widget>[
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Text("${item["id"]}"),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Text(formattedCreatedAt),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Text(item["customer"]
                                                ["customer_name"]),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Text(item["status"]),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Text("€${item["total"]}"),
                                          ),
                                        ),
                                        TableCell(
                                          verticalAlignment:
                                              TableCellVerticalAlignment.top,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                cellPadding),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.edit,
                                                    size: 18.0,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () async {
                                                    await FirebaseFirestore
                                                        .instance
                                                        .collection("orders")
                                                        .doc(item["id"])
                                                        .delete();
                                                  },
                                                  icon: const Icon(
                                                    Icons.cancel,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Wrap(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          controller.page = 1;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.skip_previous,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (controller.page == 1) return;
                                          controller.page--;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.chevron_left,
                                          size: 24.0,
                                        ),
                                      ),
                                      ...List.generate(
                                        pageCount,
                                        (index) {
                                          var rowPage = index + 1;
                                          var pageSelected = rowPage == page;
                                          return IconButton(
                                            onPressed: () {
                                              controller.page = rowPage;
                                              controller.update();
                                            },
                                            icon: Text(
                                              "$rowPage",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .color!
                                                    .withOpacity(
                                                      pageSelected ? 1.0 : 0.4,
                                                    ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          if (controller.page == pageCount) {
                                            return;
                                          }
                                          controller.page++;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.chevron_right,
                                          size: 24.0,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          controller.page = pageCount;
                                          controller.update();
                                        },
                                        icon: const Icon(
                                          Icons.skip_next,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              if (kDebugMode)
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.add),
                          label: const Text(
                            "Delete All",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () async {
                            var snapshot = await FirebaseFirestore.instance
                                .collection("orders")
                                .get();
                            for (var i = 0; i < snapshot.docs.length; i++) {
                              await FirebaseFirestore.instance
                                  .collection("orders")
                                  .doc(snapshot.docs[i].id)
                                  .delete();
                            }
                          },
                        ),
                        const SizedBox(
                          width: 6.0,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.refresh),
                          label: const Text("Dummy"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () async {
                            for (var i = 0; i < 6; i++) {
                              var randomStatus =
                                  i % 2 == 0 ? "Pending" : "Ongoing";

                              await FirebaseFirestore.instance
                                  .collection("orders")
                                  .add({
                                "created_at": Timestamp.fromDate(
                                  DateTime.now().add(
                                    Duration(
                                      days: Random().nextInt(40),
                                    ),
                                  ),
                                ),
                                "customer": {
                                  "uid": FirebaseAuth.instance.currentUser!.uid,
                                  "customer_name": FirebaseAuth
                                          .instance.currentUser!.displayName ??
                                      "Anonymous",
                                  "email": FirebaseAuth
                                          .instance.currentUser!.email ??
                                      "-",
                                  "photo": FirebaseAuth
                                          .instance.currentUser!.photoURL ??
                                      "https://i.ibb.co/S32HNjD/no-image.jpg",
                                },
                                "items": [
                                  {
                                    "product_name": "Elegant Soft Chips",
                                    "price": 25.0,
                                    "qty": 2.0,
                                  },
                                  {
                                    "product_name": "Oriental Metal Hat",
                                    "price": 30.0,
                                    "qty": 1.0,
                                  },
                                  {
                                    "product_name": "Generic Bronze Chips",
                                    "price": 100.0,
                                    "qty": 2.0,
                                  }
                                ],
                                "total": 280.0,
                                "status": randomStatus,
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TableListView> createState() => TableListController();
}
