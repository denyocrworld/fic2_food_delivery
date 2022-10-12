import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class TableListView extends StatefulWidget {
  const TableListView({Key? key}) : super(key: key);

  Widget build(context, TableListController controller) {
    controller.view = this;

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
          child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("orders").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  const cellPadding = 12.0;

                  var itemCount = snapshot.data!.docs.length;
                  var startIndex = (page * limit) - page;
                  var endIndex = startIndex + limit;

                  if (endIndex >= (itemCount - 1)) {
                    endIndex = itemCount - 1;
                  }

                  var pageItems = [];
                  var searchItems = snapshot.data!.docs.where((i) {
                    var search = controller.search.toLowerCase();
                    var searchField =
                        i["customer.customer_name"].toString().toLowerCase();
                    return searchField.toString().contains(search);
                  }).toList();

                  if (searchItems.isNotEmpty) {
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
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
                                        decoration: InputDecoration.collapsed(
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
                                ],
                              ),
                              ...List.generate(pageItems.length, (index) {
                                Map<String, dynamic> item = (pageItems[index]
                                    .data() as Map<String, dynamic>);
                                item["id"] = pageItems[index].id;
                                DateTime createdAt =
                                    (item["created_at"] as Timestamp).toDate();
                                String formattedCreatedAt =
                                    DateFormat("d MMM y").format(createdAt);
                                return TableRow(
                                  decoration: const BoxDecoration(),
                                  children: <Widget>[
                                    TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.top,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(cellPadding),
                                        child: Text("${item["id"]}"),
                                      ),
                                    ),
                                    TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.top,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(cellPadding),
                                        child: Text(formattedCreatedAt),
                                      ),
                                    ),
                                    TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.top,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(cellPadding),
                                        child: Text(
                                            item["customer"]["customer_name"]),
                                      ),
                                    ),
                                    TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.top,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(cellPadding),
                                        child: Text(item["status"]),
                                      ),
                                    ),
                                    TableCell(
                                      verticalAlignment:
                                          TableCellVerticalAlignment.top,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.all(cellPadding),
                                        child: Text("€${item["total"]}"),
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
        ),
      ),
    );
  }

  @override
  State<TableListView> createState() => TableListController();
}
